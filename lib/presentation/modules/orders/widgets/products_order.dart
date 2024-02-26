import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

import 'delivery_row.dart';
import 'products_amount_row.dart';
import 'total_row.dart';

class ProductsOrderAmount extends StatelessWidget {
  const ProductsOrderAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height:240.h ,
      width: double.infinity,
      decoration:ShapeDecoration(
          color:AppColors.kLightGray,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            )),
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.end,
              children:[
                Text('المنتجات',
                style:AppStyles.semiBold12(context)),
                const ProductsAmountRow(
                  price: '560',
                  amount: '2',
                  product: 'جمبري',),
                  Gap(12.h),
                const ProductsAmountRow(
                  price: '16',
                  amount: '1', 
                  product: 'كيوي',),
                  Gap(24.h),
                  const DeliveryRow(
                    price: '20',),
                    Gap(24.h),
                  const TotalRow(
                      price: '569',),
                
              ]
            ),
          )
    );
  }
}