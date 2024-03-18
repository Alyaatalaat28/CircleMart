import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class CustomCategorisRow extends StatelessWidget {
  const CustomCategorisRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(Assets.vector),
      const Gap(4),
      Text('عرض الكل', style: AppStyles.regular12(context, AppColors.kRed)),
      const Spacer(),
      Text(text, style: AppStyles.semiBold18(context)),
    ]);
  }
}
