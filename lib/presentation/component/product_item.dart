import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/component/dialog/snack_bar.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:provider/provider.dart';
import '../modules/home/widgets/product_price_and_cart.dart';
import '../modules/home/widgets/product_stack.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key,this.iconColor=AppColors.kFavoriteIcon,required this.product});
 final Color iconColor;
 final Product product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder:(context,provider,child)=> ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: double.infinity, 
              maxHeight: double.infinity, 
            ),
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.kLightGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: AspectRatio(
                aspectRatio: 2 / 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children: [
                      ProductStack(
                       iconColor:iconColor ,
                       image:product.image ,
                     ),
                      const Spacer(),
                      Text(product.name,
                      style:AppStyles.regular14(context,AppColors.kBlack)),
                      const Gap(8),
                       ProductPriceAndCart(
                        price:product.price ,
                        onTap:(){
                          provider.addToCart(product,provider.currentQuentity);
                          ScaffoldMessenger.of(context).showSnackBar(showSnack(context));
                        },
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