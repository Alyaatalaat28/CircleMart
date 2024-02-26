import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'delete_account.dart';
import 'setting_item.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:double.infinity,
      height:374.h,
      child: Container(
         decoration:ShapeDecoration(
            color:AppColors.kSettingContainerColor,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('الاعدادات',
                    style:AppStyles.semiBold12(context)),
                    const Gap(6),
                  ],
                ),
               const Row(
                 children: [
                   SettingItem(
                    image: Assets.editAccount, text: 'تعديل الحساب'
                                 ),
                   Gap(6),
                 ],
               ),
               const SettingItem(
                image: Assets.language, text: 'اللغة',
                ),
               const SettingItem(
                image: Assets.connectToUs, text: 'تواصل معنا'
               ),
               const SettingItem(
                image: Assets.aboutApp, text: 'عن التطبيق'
              ),
               const Row(
                 children: [
                   SettingItem(
                    image: Assets.rateApp, text: 'تقييم التطبيق'
                    ),
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
}