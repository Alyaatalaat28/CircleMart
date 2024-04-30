import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/invoice/widgets/use_points.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class PointsOption extends StatelessWidget {
  const PointsOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => Row(
        children: [
          Checkbox(
              activeColor: AppColors.kRed,
              value: provider.pointsCheck,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: AppColors.kGray)),
              onChanged: (value) {
                provider.changeCheckBoxValue(value!);
              }),
          Gap(12.w),
          const UsePoints(),
          const Spacer(),
          Text('${provider.orderCost!.data!.totalPoints! / 10}',
              style: AppStyles.semiBold16(
                context,
              )),
          Gap(3.w),
          Text('ج.م', style: AppStyles.regular12(context, AppColors.kGray)),
        ],
      ),
    );
  }
}
