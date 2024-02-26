import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:54,
      width:126.w,
      padding:const EdgeInsets.all(16),
          decoration:ShapeDecoration(
            color:AppColors.kRed,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            children:[
              SvgPicture.asset(Assets.dropDownMenu),
               Gap(11.w),
              Text('القاهرة',
              style:AppStyles.regular14(context, AppColors.kWhite)
            ),
             Gap(11.w),
            SvgPicture.asset(Assets.location),
            ]),
    );
  }
}