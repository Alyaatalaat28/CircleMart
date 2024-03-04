import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,
  required this.width,required this.height,
  required this.text,required this.radius,this.onPressed
  });
final double width;
final double height;
final double radius;
final String text;
final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
       width:width.w,
       height:height.h,
      decoration:ShapeDecoration(
          color:AppColors.kRed,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            )),
            child:Center(
              child: TextButton(
                onPressed:onPressed,
                 child: Text(text,
                 style: AppStyles.regular14(context, AppColors.kWhite),
                 )),
            )
    );
  }
}