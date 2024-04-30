import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/product_item.dart';
import 'package:nami/presentation/component/shimmer.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/product_details.dart';
import 'package:provider/provider.dart';

class FavoriteGridView extends StatefulWidget {
  const FavoriteGridView({super.key});

  @override
  State<FavoriteGridView> createState() => _FavoriteGridViewState();
}

class _FavoriteGridViewState extends State<FavoriteGridView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).getFavorite();
      _addRouteChangeListener();
    });
  }

  void _addRouteChangeListener() {
    ModalRoute.of(context)!.addScopedWillPopCallback(() async {
      Provider.of<HomeProvider>(context, listen: false).getLatestProducts();
      return true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        if (provider.favoriteList!.isNotEmpty) {
          return GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.45,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 8.0,
            children: provider.isLoadingGetFavorite
                ? List.generate(8, (index) => const ShimmerWidget())
                : List.generate(
                    provider.favoriteList!.length,
                    (index) => InkWell(
                        onTap: () {
                          push(ProductDetails(
                            product: provider.favoriteList![index],
                          ));
                        },
                        child: ProductItem(
                          product: provider.favoriteList![index],
                        )),
                  ),
          );
        } else {
          return Center(
            child: Column(
              children: [
                Gap(260.h),
                Text(
                  'المفضلة فارغه',
                  style: AppStyles.regular16(context, AppColors.kGray),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
