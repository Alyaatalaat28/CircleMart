
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/favorite/favorite_view.dart';
import 'package:nami/presentation/modules/orders/orders_view.dart';
import 'package:nami/presentation/modules/points/points_view.dart';

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
          child: Center(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OrdersItem(
                image:Assets.points,
                text:'النقاط',
                onTap: (){
                  push(
                    const PointsView(),
                  );
                },
                ),
               OrdersItem(
                image:Assets.favorite,
                text:'المفضلة',
                onTap: (){
                  push(
                    const FavoriteView(),
                  );
                },
              ),
             OrdersItem( 
              image:Assets.orders,
              text:'طلباتي',
              onTap: (){
                  push(
                    const OrdersView(),
                  );
                },
              ),
            ]
        ),
      ))
    );
  }
}