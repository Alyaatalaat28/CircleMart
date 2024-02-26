import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/cart/cart_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../component/products_app_bar.dart';
import 'products_view_model.dart';
import 'widgets/add_to_favorite.dart';
import 'widgets/product_description.dart';
import 'widgets/product_image.dart';
import 'widgets/product_price_and_amount.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Consumer<ProductsViewModel>(
            builder: (BuildContext context,provider,child) {  
            return Column(
              children: [
                const ProductsAppBar(
                  text: 'تفاصيل المنتج'
                  ),
                Gap(28.h),
                const ProductImage(),
               const AddToFavorite(),
               const ProductDescription(),
              Gap(12.h),
              const ProductPriceAndAmount(),
              Gap(30.h),
               CustomBottomSheet(
                width: 141,
                height: 45,
                text: '${provider.counter*280}', 
                child:InkWell(
                  onTap: (){
                    push(const CartView());
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('اضف للسلة',
                        style:AppStyles.regular14(context, AppColors.kWhite)),
                        Gap(8.w),
                        SvgPicture.asset(Assets.addToCart,
                        width:20.w,
                        height:20.h)
                      ],
                    ),
                  ),
                ),),
              ],
            );
            }
          ),
        ),
      ),
    );
  }
}