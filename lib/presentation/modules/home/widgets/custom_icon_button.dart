import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'icon_stack.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key,required this.image,this.text});
  final String image;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       width:48.w,
       height:48.h,
      child: Container(
        decoration:ShapeDecoration(
          color:AppColors.kLightGray,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child:IconStack(
            image:image,
            text:text,
          ),
          ),
      ),
    );
  }
}