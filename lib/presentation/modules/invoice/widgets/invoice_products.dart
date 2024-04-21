// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/component/all_order_products_list_view.dart';
import 'package:nami/presentation/component/order_delivery_price.dart';
import 'package:nami/presentation/component/order_total_price.dart';
import 'package:nami/presentation/modules/invoice/widgets/points_option.dart';
import 'package:provider/provider.dart';

class InvoiceProducts extends StatelessWidget {
  const InvoiceProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Container(
          width: double.infinity,
          decoration: ShapeDecoration(
              color: AppColors.kLightGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('المنتجات', style: AppStyles.semiBold12(context)),
              const ProductsListView(),
              SvgPicture.asset(Assets.line, color: AppColors.kGray),
              Gap(12.h),
              const OrderDeliveryPrice(
                price: '20',
              ),
              Gap(12.h),
              SvgPicture.asset(Assets.line, color: AppColors.kGray),
              Gap(12.h),
              const PointsOption(),
              Gap(12.h),
              SvgPicture.asset(Assets.line, color: AppColors.kGray),
              Gap(12.h),
              OrderTotalPrice(
                price: '${provider.totalPriceForCartProuducts()}',
              ),
            ]),
          )),
    );
  }
}
