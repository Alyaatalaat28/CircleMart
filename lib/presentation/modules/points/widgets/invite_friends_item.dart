// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class InviteFriendsItem extends StatelessWidget {
  const InviteFriendsItem({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Row(
        children:[
          Text('10 +',
        style: AppStyles.semiBold18(context).copyWith(
          color: AppColors.kRed
        ),
        ),
        const Spacer(),
        Column(
        children:[
        Text('لقد قمت بدعوة',
        style:AppStyles.regular12(context,AppColors.kGray,)
        ),
        Gap(4.w),
        Text('محمد جمال',
        style: AppStyles.semiBold16(context),) ,
            ]
          ),
          Gap(8.w),
        SvgPicture.asset(Assets.points,
        width: 24.w,
        height:24.h),
        ]),
    );
  }
}