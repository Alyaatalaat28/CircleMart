import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

import 'order_date_and_time.dart';
import 'order_location.dart';
import 'order_number.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 158.h,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: ShapeDecoration(
        color: AppColors.kLightGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          const OrderNumber(
            orderNumber: '#26585',
          ),
          Gap(16.h),
          const OrderDateAndTime(
            time: '03:23',
            date: '11/11/2022',
          ),
          Gap(16.h),
          const OrderLocation(
            location: 'شارع الحرية - الجيزة',
          ),
        ],
      ),
    );
  }
}
