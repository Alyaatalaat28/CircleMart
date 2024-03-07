// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class OrderLocation extends StatelessWidget {
  const OrderLocation({super.key,required this.location});
   final String location;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         const Spacer(),
         Text(location,
         style:AppStyles.regular14(context, AppColors.kBlack)),
         Gap(8.w),
         SvgPicture.asset(Assets.location,
         color:AppColors.kBlack ,)
      ],
    );
  }
}