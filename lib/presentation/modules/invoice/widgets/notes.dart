import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: double.infinity,
      alignment: AlignmentDirectional.topEnd,
      decoration: ShapeDecoration(
          color: AppColors.kWhite,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.kLightGray,
              ),
              borderRadius: BorderRadius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(children: [
          const Expanded(
            child: CustomTextField(
              label: 'ملاحظات',
              keyboardType: TextInputType.text,
            ),
          ),
          Gap(16.w),
          SvgPicture.asset(Assets.note),
        ]),
      ),
    );
  }
}
