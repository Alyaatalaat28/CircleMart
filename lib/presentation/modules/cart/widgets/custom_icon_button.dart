import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: ShapeDecoration(
          color: AppColors.kLightGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 16.w,
            height: 16.h,
          ),
        ),
      ),
    );
  }
}
