
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

import 'orders_item.dart';

class OrdersOptions extends StatelessWidget {
  const OrdersOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:121.h,
      width:double.infinity,
      child:Container(
        decoration:ShapeDecoration(
          color:AppColors.kLightGray,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          ),
          child:const Center(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OrdersItem(
                image:Assets.points,
                text:'النقاط'
                ),
               OrdersItem(
                image:Assets.favorite,
                text:'المفضلة'
              ),
             OrdersItem( 
              image:Assets.orders,
              text:'طلباتي'
              ),
            ]
        ),
      ))
    );
  }
}