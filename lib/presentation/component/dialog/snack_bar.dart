import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

SnackBar showSnack(context){
   return SnackBar(
      content: Text('تم اضافة المنتج الي السلة',
      textDirection: TextDirection.rtl,
      style:AppStyles.regular12(context, AppColors.kLightGray)),
      duration:const Duration(seconds:3),
      );
  }