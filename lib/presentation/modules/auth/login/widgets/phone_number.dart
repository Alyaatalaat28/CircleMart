// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 60.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: AppColors.kLightGray
            )
          )
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Row(
              children: [
                const Spacer(),
               const CustomTextField(
                label: 'رقم الجوال',
                color: AppColors.kBlack,
                 keyboardType:TextInputType.phone ,),
                Gap(6.w),
                SvgPicture.asset(Assets.phone,)
              ],
            ),
          ),
    );
  }
}