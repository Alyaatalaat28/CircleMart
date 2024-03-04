import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';

import 'custom_container.dart';
import 'payments_bottom_sheet.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      child: CustomOrderListTile(
        title: 'طريقة الدفع',
        subTitle: 'كاش',
        image: Assets.payment,
        trailing: true,
       onPressed:()=> showBottomSheet(),
      ),);
  }
void showBottomSheet(){
            showModalBottomSheet(
              context:context,
              builder:(context)=>  const PaymentsBottomSheet()
              );
  }
}