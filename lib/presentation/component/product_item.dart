import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/login/login_view.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import '../modules/home/widgets/product_price_and_cart.dart';
import '../modules/home/widgets/product_stack.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });
  final Datam product;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        child: Card(
          color: AppColors.kWhite,
          child: AspectRatio(
            aspectRatio: 2 / 2.5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductStack(
                    product: product,
                    onTap: () {
                      if (Provider.of<AuthProvider>(context, listen: false)
                              .saveUserData
                              .getUserToken() ==
                          '') {
                        push(const LoginView());
                      } else {
                        product.isFavorite = !product.isFavorite!;
                        provider.addOrRemoveFavorite(product.id!);
                        provider.updateFavoriteStatus(product.id!);
                      }
                    },
                  ),
                  const Spacer(),
                  Text(product.title!,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      style: AppStyles.regular14(context, AppColors.kBlack)),
                  const Gap(8),
                  ProductPriceAndCart(
                    product: product,
                    // onTap: () {
                    //   provider.addToCart(product, provider.currentQuentity);
                    //   ScaffoldMessenger.of(context)
                    //       .showSnackBar(showSnack(context));
                    // },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
