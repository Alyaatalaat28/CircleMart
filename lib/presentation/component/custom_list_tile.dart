// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomOrderListTile extends StatelessWidget {
  const CustomOrderListTile({super.key,required this.title,required this.image,
  this.subTitle,this.textStyle,required this.trailing,this.onPressed});

  final String title;
  final String? subTitle;
  final String image;
  final TextStyle? textStyle;
  final bool trailing;
  final void Function()? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        dense:true,
        minVerticalPadding: 0.0,
        contentPadding: const EdgeInsets.only(right: 16.0),
        title: Text(title),
    
        titleTextStyle:subTitle!=null? AppStyles.regular12(context, AppColors.kGray):textStyle,

        subtitle:subTitle!=null?Text(subTitle!,
        style: AppStyles.regular14(context, AppColors.kBlack),):null ,

        leading: SvgPicture.asset(image,
        color: AppColors.kRed,
        width: 25.w,
        height:25.h
        ),
        trailing:trailing?IconButton(
          onPressed:onPressed, 
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.kBlack,
            size:14
          ),
        ):null,
      ),
    );
  }
}