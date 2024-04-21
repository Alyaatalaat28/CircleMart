// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

class NameField extends StatelessWidget {
  NameField(
      {super.key,
      required this.label,
      this.controller,
      this.formKey,
      this.validator});
  final String label;
  String? Function(String?)? validator;
  TextEditingController? controller;
  Key? formKey;
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
        controller: controller,
        validator: validator,
        formKey: formKey,
        keyboardType: TextInputType.name,
        textStyle: AppStyles.regular16(context, AppColors.kBlack),
      ),
    );
  }
}
