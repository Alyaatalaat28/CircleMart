import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';

class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: double.infinity,
      decoration: ShapeDecoration(
          color: AppColors.kRed.withOpacity(0.08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      child: Column(
        children: [
          CustomOrderListTile(
            image: Assets.number,
            title: '#26585',
            trailing: false,
            textStyle: AppStyles.semiBold18(context).copyWith(
              color: AppColors.kRed,
            ),
          ),
          CustomOrderListTile(
            image: Assets.calender,
            title: '28/08/2023 - 03:23 م',
            trailing: false,
            textStyle: AppStyles.regular14(
              context,
              AppColors.kBlack,
            ),
          ),
          const CustomOrderListTile(
            trailing: false,
            image: Assets.branch,
            title: 'الفرع',
            subTitle: 'شارع الحرية',
          ),
          const CustomOrderListTile(
            image: Assets.location,
            title: 'عنوان التوصيل',
            subTitle: 'شارع الحرية - الجيزة',
            trailing: false,
          ),
          const CustomOrderListTile(
            image: Assets.payment,
            title: 'طريقة الدفع',
            subTitle: 'كاش',
            trailing: false,
          ),
          const CustomOrderListTile(
            image: Assets.note,
            title: 'ملاحظات',
            subTitle: 'هات الجمبري طازة',
            trailing: false,
          ),
        ],
      ),
    );
  }
}
