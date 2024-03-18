import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
          controller: controller,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: 'منتج معين .. ؟',
            hintStyle: AppStyles.regular12(context, AppColors.kGray),
            border: InputBorder.none,
          )),
    );
  }
}
