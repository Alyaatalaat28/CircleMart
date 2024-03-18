import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/about/about_us_view.dart';
import 'package:nami/presentation/modules/auth/edit_profile/edit_profile.dart';
import 'package:nami/presentation/modules/contact/contact_view.dart';
import 'package:nami/presentation/modules/setting/widgets/language_bottom_sheet.dart';
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الاعدادات', style: AppStyles.semiBold12(context)),
                  const Gap(6),
                ],
              ),
              Row(
                children: [
                  SettingItem(
                    image: Assets.editAccount,
                    text: 'تعديل الحساب',
                    onPressed: () {
                      push(const EditProfile());
                    },
                  ),
                  const Gap(6),
                ],
              ),
              SettingItem(
                image: Assets.language,
                text: 'اللغة',
                onPressed: () => showBottomSheet(),
              ),
              SettingItem(
                  image: Assets.connectToUs,
                  text: 'تواصل معنا',
                  onPressed: () {
                    push(
                      const ContactView(),
                    );
                  }),
              SettingItem(
                image: Assets.aboutApp,
                text: 'عن التطبيق',
                onPressed: () {
                  push(
                    const AboutView(),
                  );
                },
              ),
              const Row(
                children: [
                  SettingItem(image: Assets.rateApp, text: 'تقييم التطبيق'),
                  Gap(6),
                ],
              ),
              const DeleteAccount(),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => const LanguageBottomSheet());
  }
}
