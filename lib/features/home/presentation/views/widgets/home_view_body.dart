import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_categoris_row.dart';
import 'category_grid_view.dart';
import 'custom_app_bar.dart';
import 'images_slider.dart';
import 'location_and_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(16.0),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Gap(20),
            LocationAndSearch(),
            Gap(16),
            ImageSlider(),
            Gap(32),
            CustomCategorisRow(
              text:'الاقسام'
            ),
            Gap(16),
            CategoryGridView()
          ],
        ),
      ),
    );
  }
}