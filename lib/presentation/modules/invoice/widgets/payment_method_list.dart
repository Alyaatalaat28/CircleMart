import 'package:flutter/material.dart';
import 'package:nami/core/utils/constants.dart';

import 'payment_method_item.dart';

class PaymentMethodList extends StatelessWidget {
  const PaymentMethodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          paymentMethods.length,
          (index) => PaymentMethodItem(
                image: paymentMethods[index].image,
                text: paymentMethods[index].text,
                index: index,
              )),
    );
  }
}
