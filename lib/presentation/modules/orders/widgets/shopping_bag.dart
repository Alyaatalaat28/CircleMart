import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:provider/provider.dart';

class ShoppingBagRow extends StatelessWidget {
  const ShoppingBagRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersViewModel>(
      builder: (context, provider, child) => Padding(
        padding: const EdgeInsets.only(top: 22.0, right: 22.0),
        child: Row(
          children: [
            InkWell(
              onTap: () => provider.sliderIncrement(),
              child: CircleAvatar(
                backgroundColor: AppColors.kRed.withOpacity(0.1),
                radius: 20,
                child: SvgPicture.asset(Assets.bag),
              ),
            ),
            Gap(8.w),
            Text('تم استلام طلبك',
                style: AppStyles.regular14(context, AppColors.kGray)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
