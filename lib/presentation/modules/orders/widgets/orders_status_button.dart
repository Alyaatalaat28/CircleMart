import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';

class OrdersStatusButton extends StatelessWidget {
  const OrdersStatusButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor,
      this.onTap});

  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56.h,
          decoration: ShapeDecoration(
            color: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: AppStyles.regular16(context, textColor),
            ),
          ),
        ),
      ),
    );
  }
}
