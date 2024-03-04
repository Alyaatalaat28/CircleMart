import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.label});
final String label ;

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Expanded(
        child: TextField(
          style:AppStyles.regular14(context, AppColors.kGray),
          cursorColor:AppColors.kGray ,
          decoration: InputDecoration(
            labelStyle:AppStyles.regular14(context, AppColors.kGray) ,
            border: InputBorder.none,
            labelText:label ,
          ),
        ),
      ),
    );
  }
}