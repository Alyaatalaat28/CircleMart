import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class PreviousOrderButton extends StatelessWidget {
  const PreviousOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 110.w,
          height: 41.h,
          decoration: ShapeDecoration(
            color: AppColors.kWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Center(
              child: Text('طلب منتهي',
                  style: AppStyles.regular14(context, AppColors.kRed))),
        ),
      ],
    );
  }
}
