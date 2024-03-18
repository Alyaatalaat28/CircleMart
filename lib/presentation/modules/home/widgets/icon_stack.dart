import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

class IconStack extends StatelessWidget {
  const IconStack({super.key, required this.image, required this.text});
  final String image;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topEnd, children: [
      SizedBox(width: 30.w, height: 30.h, child: SvgPicture.asset(image)),
      SizedBox(
        width: 16.w,
        height: 16.h,
        child: Container(
          decoration: const ShapeDecoration(
            color: AppColors.kRed,
            shape: CircleBorder(
                side: BorderSide(
              color: AppColors.kLightGray,
              width: 1,
            )),
          ),
          child: Center(
              child: Text(
            text ?? '',
            style: TextStyle(
              color: AppColors.kWhite,
              fontSize: 10.sp,
            ),
          )),
        ),
      ),
    ]);
  }
}
