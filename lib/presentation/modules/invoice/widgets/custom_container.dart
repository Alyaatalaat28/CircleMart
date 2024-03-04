import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80.h,
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