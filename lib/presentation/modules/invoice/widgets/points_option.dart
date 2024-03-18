import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/invoice/widgets/use_points.dart';

class PointsOption extends StatefulWidget {
  const PointsOption({super.key});

  @override
  State<PointsOption> createState() => _PointsOptionState();
}

class _PointsOptionState extends State<PointsOption> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ج.م', style: AppStyles.regular12(context, AppColors.kGray)),
        Gap(3.w),
        Text('13 -',
            style: AppStyles.semiBold16(
              context,
            )),
        const Spacer(),
        const UsePoints(),
        Gap(12.w),
        Checkbox(
            activeColor: AppColors.kRed,
            value: isChecked,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: AppColors.kGray)),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            })
      ],
    );
  }
}
