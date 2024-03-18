import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

import 'custom_button.dart';

class EditAndCancelButtons extends StatelessWidget {
  const EditAndCancelButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          const CustomOrderButton(
            borderColor: AppColors.kBlack,
            textColor: AppColors.kBlack,
            image: Assets.cancel,
            text: 'الغاء',
          ),
          Gap(8.w),
          const CustomOrderButton(
            borderColor: AppColors.kRed,
            textColor: AppColors.kRed,
            image: Assets.edit,
            text: 'تعديل',
          ),
        ],
      ),
    );
  }
}
