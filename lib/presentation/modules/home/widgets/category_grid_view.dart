import 'package:flutter/material.dart';
import 'package:nami/presentation/component/shimmer.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import 'category_item.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 1 / 1.8,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 7.0,
        children: provider.isLoading
            ? List.generate(8, (index) => const ShimmerWidget())
            : (provider.categoris?.data?.take(8) ?? [])
                .toList()
                .asMap()
                .entries
                .map((entry) {
                final index = entry.key;
                final category = entry.value;
                return CategoryItem(
                  index: index,
                  category: category,
                );
              }).toList(),
      );
    });
  }
}
