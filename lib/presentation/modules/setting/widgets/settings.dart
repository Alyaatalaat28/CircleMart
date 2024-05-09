import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/about/about_us_view.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/edit_profile/edit_profile.dart';
import 'package:nami/presentation/modules/auth/login/login_view.dart';
import 'package:nami/presentation/modules/contact/contact_view.dart';
import 'package:nami/presentation/modules/setting/widgets/language_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'delete_account.dart';
import 'setting_item.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 374.h,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.kSettingContainerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(tr(LocaleKeys.settings),
                      style: AppStyles.semiBold12(context)),
                  const Gap(6),
                ],
              ),
              Consumer<AuthProvider>(
                builder: (context, provider, child) => Row(
                  children: [
                    Gap(5.w),
                    SettingItem(
                      image: Assets.editAccount,
                      text: tr(LocaleKeys.modifyTheAccount),
                      onPressed: () {
                        if (provider.saveUserData.getUserToken() == '') {
                          push(const LoginView());
                        } else {
                          push(const EditProfile());
                        }
                      },
                    ),
                  ],
                ),
              ),
              const Gap(6),
              SettingItem(
                image: Assets.language,
                text: tr(LocaleKeys.language),
                onPressed: () => showBottomSheet(),
              ),
              SettingItem(
                  image: Assets.connectToUs,
                  text: tr(LocaleKeys.connectUs),
                  onPressed: () {
                    push(
                      const ContactView(),
                    );
                  }),
              SettingItem(
                image: Assets.aboutApp,
                text: tr(LocaleKeys.aboutApp),
                onPressed: () {
                  push(
                    const AboutView(),
                  );
                },
              ),
              Row(
                children: [
                  Gap(5.w),
                  SettingItem(
                      image: Assets.rateApp,
                      text: tr(LocaleKeys.appEvaluation)),
                ],
              ),
              const Gap(6),
              Row(
                children: [
                  Gap(5.w),
                  const DeleteAccount(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) =>  LanguageBottomSheet());
  }
}
