import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key,
  required this.width,required this.height,
  required this.child,required this.text});
  
 final Widget child;
 final double width;
 final double height;
 final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:69.h,
      child: BottomSheet(
        backgroundColor: AppColors.kWhite,
        shadowColor: Colors.transparent,
        elevation: 1.0,
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:12.0),
          child: Center(
            child: Row(
              children:[
                Container(
                  width: width.w,
                  height: height.h,
                  decoration:ShapeDecoration(
                color:AppColors.kRed,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
                  child:child,
                ),
                const Spacer(),
                Text('ج.م',
                style:AppStyles.regular12(context, AppColors.kBlack)),
                Gap(4.w),
                Text(text,
                style:AppStyles.semiBold18(context)),
                Gap(4.w),
                Text(': الاجمالي',
                style:AppStyles.regular12(context, AppColors.kBlack))
              ]
            ),
          ),
        ),
         onClosing: () {  },),
    );
  }
}