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

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.product,
  });
  final Datam product;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
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
                  product: widget.product,
                  onTap: () {
                    if (Provider.of<AuthProvider>(context, listen: false)
                            .saveUserData
                            .getUserToken() ==
                        '') {
                      push(const LoginView());
                    } else {
                      setState(() {
                        widget.product.isFavorite = !widget.product.isFavorite!;
                      });
                      Provider.of<HomeProvider>(context, listen: false)
                          .addOrRemoveFavorite(widget.product.id!);
                      widget.product.isFavorite = widget.product.isFavorite!;
                      Provider.of<HomeProvider>(context, listen: false)
                          .updateFavoriteStatus(
                              widget.product.id!, widget.product.isFavorite!);
                      Provider.of<HomeProvider>(context, listen: false)
                          .updateFavoriteStatusFav(
                              widget.product.id!, widget.product.isFavorite!);
                    }
                  },
                ),
                const Spacer(),
                Text(widget.product.title!,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: AppStyles.regular14(context, AppColors.kBlack)),
                const Gap(8),
                ProductPriceAndCart(
                  product: widget.product,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
