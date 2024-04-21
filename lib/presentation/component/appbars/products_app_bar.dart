import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';

class ProductsAppBar extends StatelessWidget {
  const ProductsAppBar({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: [
          InkWell(
              onTap: onTap ??
                  () {
                    Navigator.pop(context);
                  },
              child: SvgPicture.asset(Assets.arrow)),
          Gap(10.w),
          Text(text, style: AppStyles.semiBold18(context)),
          const Spacer(),
        ]),
      ),
    );
  }
}
