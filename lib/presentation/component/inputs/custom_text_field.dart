import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.label,
      required this.keyboardType,
      this.color = AppColors.kGray,
      this.textStyle,
      this.controller,
      this.validator,
      this.formKey,
      this.readOnly});

  final String label;
  Key? formKey;
  final TextInputType keyboardType;
  final Color color;
  final TextStyle? textStyle;
  String? Function(String?)? validator;
  TextEditingController? controller;
  bool? readOnly;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        maxLines: null,
        style:
            widget.textStyle ?? AppStyles.regular14(context, AppColors.kGray),
        cursorColor: AppColors.kGray,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          labelStyle: AppStyles.regular14(context, widget.color),
          border: InputBorder.none,
          labelText: widget.label,
        ),
      ),
    );
  }
}
