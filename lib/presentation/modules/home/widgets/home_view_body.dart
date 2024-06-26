import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'custom_categoris_row.dart';
import 'category_grid_view.dart';
import 'images_slider.dart';
import 'location_and_search.dart';
import 'product_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Gap(20),
            LocationAndSearch(),
            const Gap(16),
            const ImageSlider(),
            const Gap(32),
            CustomCategorisRow(text: tr(LocaleKeys.sections)),
            const Gap(16),
            const CategoryGridView(),
            const Gap(16),
            CustomCategorisRow(text: tr(LocaleKeys.latestProducts)),
            const Gap(16),
            const ProductGridView(),
          ],
        ),
      ),
    );
  }
}
