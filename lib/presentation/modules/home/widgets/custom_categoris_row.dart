import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/routing/app_route.dart';

import '../../products/product_view.dart';


class CustomCategorisRow extends StatelessWidget {
  const CustomCategorisRow({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        SvgPicture.asset(Assets.vector),
        const Gap(4),
        InkWell(
          onTap:()=push(const ProductView()),
          child: Text('عرض الكل',
          style:AppStyles.regular12(context, AppColors.kRed)),
        ),
        const Spacer(),
        Text(text,
        style:AppStyles.semiBold18(context)),
      ]
    );
  }
}