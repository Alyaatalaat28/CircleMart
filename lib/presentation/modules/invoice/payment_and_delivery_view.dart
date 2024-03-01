import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/invoice/widgets/orders_items_list_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';

import 'widgets/address.dart';
import 'widgets/notes.dart';
import 'widgets/payment_method.dart';

class PaymentAndDelivery extends StatefulWidget {
  const PaymentAndDelivery({super.key});

  @override
  State<PaymentAndDelivery> createState() => _PaymentAndDeliveryState();
}

class _PaymentAndDeliveryState extends State<PaymentAndDelivery> {
  @override
  void initState() {
    //showBottomSheet();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children:[
              const ProductsAppBar(
                text:'الدفع والتوصيل'
              ),
             Gap(30.h),
             const OrderItemsListView(),
             Gap(12.h),
             const Address(),
             Gap(12.h),
             const PaymentMethod(),
             Gap(12.h),
             const Notes(),
            ]
          ),
        ),
      )
    ));
  }
  void showBottomSheet(){
            showModalBottomSheet(
              context:context,
              builder:(context)=>  CustomBottomSheet(
              width: 79, 
              height: 45,
              text: '576',
              child:Center(
                child: Text('تأكيد',
                style:AppStyles.regular14(context, AppColors.kWhite)),
              ) ,
              ));
  }
}