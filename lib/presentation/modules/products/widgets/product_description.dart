import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('${product.details}',
          textDirection: TextDirection.rtl,
          style: AppStyles.regular12(context, AppColors.kGray)),
    );
  }
}
