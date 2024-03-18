import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

class NameField extends StatelessWidget {
  const NameField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(right: 50),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppColors.kLightGray))),
      child: CustomTextField(
        label: label,
        keyboardType: TextInputType.name,
        textStyle: AppStyles.regular16(context, AppColors.kBlack),
      ),
    );
  }
}
