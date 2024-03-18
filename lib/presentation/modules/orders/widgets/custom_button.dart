import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CustomOrderButton extends StatelessWidget {
  const CustomOrderButton(
      {super.key,
      required this.borderColor,
      required this.textColor,
      required this.image,
      required this.text});

  final Color borderColor;
  final Color textColor;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 48.h,
          decoration: ShapeDecoration(
            color: AppColors.kWhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: borderColor,
                )),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppStyles.regular12(context, textColor),
              ),
              Gap(8.w),
              SvgPicture.asset(image)
            ],
          )),
    );
  }
}
