import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';

class OrdersItem extends StatelessWidget {
  const OrdersItem({super.key,required this.image,required this.text,this.onTap});
  final String image;
  final String text;
  final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
            SvgPicture.asset(image,
            width:35.w,
            height: 35.h,),
            const Gap(12),
            Text(text,
            style:AppStyles.semiBold14(context))
        ],
      ),
    );
  }
}