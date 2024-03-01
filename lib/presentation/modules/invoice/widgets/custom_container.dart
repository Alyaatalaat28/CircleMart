import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.child,this.height=80});
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height.h,
      decoration: ShapeDecoration(
        color: AppColors.kWhite,
        shape: RoundedRectangleBorder(
          side:const BorderSide(
            color:AppColors.kLightGray,
          ) ,
          borderRadius: BorderRadius.circular(12)
        )
        ),
        child: child,
    );
  }
}