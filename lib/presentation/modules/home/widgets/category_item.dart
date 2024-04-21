// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';
import 'package:nami/presentation/modules/products/product_view.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.index,
    required this.category,
  });

  final int index;
  final Datum category;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return InkWell(
        onTap: () {
          provider.updateCategorisSelectedIndex(index);
          provider.getProducts(
            queryParams: ProductQueryParameters(
              categoryId: category.id,
            ),
          );
          push(const ProductView());
        },
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
              ),
              child: Card(
                color: AppColors.kWhite,
                child: AspectRatio(
                  aspectRatio: 1.5 / 1.5,
                  child: CachedNetworkImage(
                    imageUrl: category.image!,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Gap(10),
            Text(
              category.title!,
              textAlign: TextAlign.center,
              style: AppStyles.regular12(context, AppColors.kBlack),
            ),
          ],
        ),
      );
    });
  }
}
