import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/home/widgets/location.dart';
import 'package:nami/presentation/modules/products/product_view.dart';
import 'package:provider/provider.dart';
import '../../../component/inputs/custom_search_field.dart';

class LocationAndSearch extends StatelessWidget {
  LocationAndSearch({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Row(children: [
        const Location(),
        Gap(10.w),
        SearchField(
            controller: searchController,
            onTap: () {
              provider.updateSubAndCategorisSelectedIndex();
              provider.searchProductsController.clear();
              provider.getProducts(queryParams: null);
              push(const ProductView());
            }),
      ]);
    });
  }
}
