import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/model/body/my_orders/my_orders.dart';
import 'package:nami/presentation/modules/orders/order_details.dart';
import 'order_date_and_time.dart';
import 'order_location.dart';
import 'order_number.dart';
import 'previous_order_button.dart';

class PreviousOrder extends StatelessWidget {
  const PreviousOrder({super.key, required this.myOrder, required this.index});
 final MyOrders myOrder;
 final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210.h,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: ShapeDecoration(
        color: AppColors.kLightGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
           OrderNumber(
            orderNumber: '#${myOrder.data![index].id!}',
             onTap: () {
                push(OrderDetails(
                  myOrder: myOrder,
                   index: index,));
              },
          ),
          Gap(16.h),
           OrderDateAndTime(
            time: '${myOrder.data![index].time}',
            date: '${myOrder.data![index].date}',
          ),
          Gap(16.h),
           OrderLocation(
            location:'${myOrder.data![index].address}',
          ),
          Gap(16.h),
          const PreviousOrderButton(),
        ],
      ),
    );
  }
}
