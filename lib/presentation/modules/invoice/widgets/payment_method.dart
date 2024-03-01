import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';

import 'custom_container.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: CustomOrderListTile(
        title: 'طريقة الدفع',
        subTitle: 'كاش',
        image: Assets.payment,
        trailing: true,
        
      ),);
  }
}