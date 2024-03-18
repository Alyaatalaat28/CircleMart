import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

abstract class AppStyles {
  static TextStyle regular12(BuildContext context, Color color) {
    return TextStyle(
      color: color,
      fontSize: 12.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular10(BuildContext context) {
    return TextStyle(
      color: AppColors.kBlack,
      fontSize: 10.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14(BuildContext context, Color color) {
    return TextStyle(
      color: color,
      fontSize: 14.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16(BuildContext context, Color color) {
    return TextStyle(
      color: color,
      fontSize: 16.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: AppColors.kBlack,
      fontSize: 18.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.kBlack,
      fontSize: 16.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14(BuildContext context) {
    return TextStyle(
      color: AppColors.kBlack,
      fontSize: 14.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold12(BuildContext context) {
    return TextStyle(
      color: AppColors.kGray,
      fontSize: 12.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: AppColors.kRed,
      fontSize: 24.sp,
      fontFamily: 'Madani',
      fontWeight: FontWeight.w600,
    );
  }
}
