import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, this.onChanged});
  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
          onChanged: onChanged,
          controller: controller,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: 'منتج معين .. ؟',
            hintStyle: AppStyles.regular12(context, AppColors.kGray),
            border: InputBorder.none,
          )),
    );
  }
}
