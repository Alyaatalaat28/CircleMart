import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/colors.dart';

class AddToFavorite extends StatelessWidget {
  const AddToFavorite({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(children: [
          Text('${product.title}',
              style: AppStyles.semiBold16(context)
                  .copyWith(color: AppColors.kRed)),
          const Spacer(),
          IconButton(
            onPressed: () {
              product.isFavorite = !product.isFavorite!;
              provider.addOrRemoveFavorite(product.id!);
              // provider.updateFavoriteStatus(
              //   product.id!, product.isFavorite!);
            },
            icon: Icon(
              Icons.favorite_rounded,
              color: product.isFavorite!
                  ? AppColors.kRed
                  : AppColors.kFavoriteIcon,
            ),
          ),
        ]),
      ),
    );
  }
}
