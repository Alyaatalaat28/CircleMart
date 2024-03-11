import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_categoris_row.dart';
import 'category_grid_view.dart';
import 'images_slider.dart';
import 'location_and_search.dart';
import 'product_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child:  SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Gap(20),
            LocationAndSearch(),
            const Gap(16),
            const ImageSlider(),
            const Gap(32),
            const CustomCategorisRow(
              text:'الاقسام'
            ),
            const Gap(16),
            const CategoryGridView(),
            const Gap(16),
             const CustomCategorisRow(
              text:'احدث المنتجات'
            ),
            const Gap(16),
             ProductGridView(),
          ],
        ),
      ),
    );
  }
}