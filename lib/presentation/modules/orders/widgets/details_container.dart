import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/my_orders/my_orders.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';

class OrderDetailsContainer extends StatelessWidget {
  const OrderDetailsContainer(
      {super.key, required this.myOrder, required this.index});
  final MyOrders myOrder;
  final int index;
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
            title: '#${myOrder.data![index].id!}',
            trailing: false,
            textStyle: AppStyles.semiBold18(context).copyWith(
              color: AppColors.kRed,
            ),
          ),
          CustomOrderListTile(
            image: Assets.calender,
            title:
                '#${myOrder.data![index].date! + myOrder.data![index].time!}',
            trailing: false,
            textStyle: AppStyles.regular14(
              context,
              AppColors.kBlack,
            ),
          ),
          CustomOrderListTile(
            trailing: false,
            image: Assets.branch,
            title: 'الفرع',
            subTitle: '${myOrder.data![index].address}',
          ),
          CustomOrderListTile(
            image: Assets.location,
            title: 'عنوان التوصيل',
            subTitle: '${myOrder.data![index].address}',
            trailing: false,
          ),
          CustomOrderListTile(
            image: Assets.payment,
            title: 'طريقة الدفع',
            subTitle: '${myOrder.data![index].payType}',
            trailing: false,
          ),
          CustomOrderListTile(
            image: Assets.note,
            title: 'ملاحظات',
            subTitle: '${myOrder.data![index].notes}',
            trailing: false,
          ),
        ],
      ),
    );
  }
}
