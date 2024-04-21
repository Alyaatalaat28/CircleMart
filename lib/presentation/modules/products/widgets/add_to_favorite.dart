import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import '../../../../core/resources/colors.dart';

class AddToFavorite extends StatelessWidget {
  const AddToFavorite({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(children: [
        Text('${product.title}',
            style:
                AppStyles.semiBold16(context).copyWith(color: AppColors.kRed)),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_rounded,
            color: AppColors.kFavoriteIcon,
          ),
        ),
      ]),
    );
  }
}
