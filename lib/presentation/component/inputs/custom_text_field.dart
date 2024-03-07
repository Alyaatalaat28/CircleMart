import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,required this.label
    ,required this.keyboardType,this.color=AppColors.kGray});

final String label ;
final TextInputType keyboardType;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Expanded(
        child: TextField(
          keyboardType:keyboardType ,
          maxLines: null,
          style:AppStyles.regular14(context, AppColors.kGray),
          cursorColor:AppColors.kGray ,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical:5),
            labelStyle:AppStyles.regular14(context, color) ,
            border: InputBorder.none,
            labelText:label ,
          ),
        ),
      ),
    );
  }
}