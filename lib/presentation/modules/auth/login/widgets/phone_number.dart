// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppColors.kLightGray))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.phone,
            ),
            Gap(8.5.w),
            Consumer<AuthProvider>(
              builder: (context, provider, child) => Expanded(
                child: CustomTextField(
                  controller: provider.loginPhoneController,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.length < 10 ||
                        value.length > 11) {
                      return (tr(LocaleKeys.invalidNumber));
                    }
                    return null;
                  },
                  formKey: provider.loginPhoneFormKey,
                  label: tr(LocaleKeys.phone),
                  color: AppColors.kBlack,
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
