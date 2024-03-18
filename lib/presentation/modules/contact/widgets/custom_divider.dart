import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.kLightGray,
      height: 1,
    );
  }
}
