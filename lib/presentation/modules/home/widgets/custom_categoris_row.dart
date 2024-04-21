import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class CustomCategorisRow extends StatelessWidget {
  const CustomCategorisRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text, style: AppStyles.semiBold18(context)),
      const Spacer(),
      Text(tr(LocaleKeys.viewAll),
          style: AppStyles.regular12(context, AppColors.kRed)),
      const Gap(4),
      SvgPicture.asset(Assets.vector),
    ]);
  }
}
