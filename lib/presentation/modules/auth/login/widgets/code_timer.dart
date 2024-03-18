import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class CodeTimer extends StatelessWidget {
  const CodeTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('00:48', style: AppStyles.regular14(context, AppColors.kBlack)),
        const Spacer(),
        Text('اعادة ارسال الرمز',
            textAlign: TextAlign.center,
            style: AppStyles.regular14(context, AppColors.kRed)),
      ],
    );
  }
}
