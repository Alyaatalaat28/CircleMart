import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/component/dialog/snack_bar.dart';
import 'package:nami/presentation/modules/cart/cart_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../component/appbars/products_app_bar.dart';
import 'widgets/add_to_favorite.dart';
import 'widgets/product_description.dart';
import 'widgets/product_image.dart';
import 'widgets/product_price_and_amount.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [
              ProductsAppBar(text: tr(LocaleKeys.productDetails)),
            ]),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Consumer<SharedPref>(
              builder: (BuildContext context, provider, child) {
            return Column(
              children: [
                ProductImage(
                  product: product,
                ),
                AddToFavorite(
                  product: product,
                ),
                ProductDescription(
                  product: product,
                ),
                Gap(12.h),
                ProductPriceAndAmount(
                  product: product,
                ),
                Gap(60.h),
                CustomBottomSheet(
                  width: 141,
                  height: 45,
                  text: '${provider.counter * product.price!}',
                  child: InkWell(
                    onTap: () {
                      provider.addToCart(product, provider.counter);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(showSnack(context));
                      push(const CartView());
                      provider.resetCounter();
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(tr(LocaleKeys.addToCart),
                              style: AppStyles.regular14(
                                  context, AppColors.kWhite)),
                          Gap(8.w),
                          SvgPicture.asset(Assets.addToCart,
                              width: 20.w, height: 20.h)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
