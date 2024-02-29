// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomOrderListTile extends StatelessWidget {
  const CustomOrderListTile({super.key,required this.title,required this.image,
  this.subTitle,this.textStyle});

  final String title;
  final String? subTitle;
  final String image;
  final TextStyle? textStyle;
  
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        title: Text(title),
    
        titleTextStyle:subTitle!=null? AppStyles.regular12(context, AppColors.kGray):textStyle,

        subtitle:subTitle!=null?Text(subTitle!,
        style: AppStyles.regular14(context, AppColors.kBlack),):null ,

        leading: SvgPicture.asset(image,
        color: AppColors.kRed,
        width: 25.w,
        height:25.h
        ),
      ),
    );
  }
}