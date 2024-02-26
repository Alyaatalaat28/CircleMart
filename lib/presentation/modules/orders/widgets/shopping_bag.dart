import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class ShoppingBagRow extends StatelessWidget {
  const ShoppingBagRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  children: [
                    const Spacer(),
                    Text('تم استلام طلبك',
                    style:AppStyles.regular14(context, AppColors.kGray)),
                    Gap(8.w),
                     CircleAvatar(
                      backgroundColor: AppColors.kRed.withOpacity(0.1),
                      radius: 20,
                      child: SvgPicture.asset(Assets.bag),
                    ),
                  ],
                ),
              );
  }
}