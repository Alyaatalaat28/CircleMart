import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinFields extends StatelessWidget {
  const PinFields({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: AppColors.kRed,
      keyboardType: TextInputType.number,
      length: 5,
      obscureText: false,
      mainAxisAlignment: MainAxisAlignment.center,
      textStyle: AppStyles.semiBold18(context).copyWith(color: AppColors.kRed),
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldOuterPadding: const EdgeInsets.all(4),
        borderRadius: BorderRadius.circular(5),
        activeColor: AppColors.kWhite,
        inactiveColor: AppColors.kWhite,
        inactiveFillColor: AppColors.kWhite,
        activeFillColor: AppColors.kWhite,
        selectedColor: AppColors.kWhite,
        selectedFillColor: AppColors.kWhite,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: (submitedCode) {},
      onChanged: (value) {},
    );
  }
}
