import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/widgets/sub_category_item.dart';
import 'package:provider/provider.dart';

class ProductBranches extends StatelessWidget {
  const ProductBranches({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      if (provider.categorisSelectedIndex > -1) {
        return SizedBox(
          height: 50.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ProductBranchItem(
                  index: index,
                  category: provider
                      .categoris!.data![provider.categorisSelectedIndex],
                ),
              );
            },
            itemCount: provider.categoris!
                .data![provider.categorisSelectedIndex].subCategories!.length,
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
