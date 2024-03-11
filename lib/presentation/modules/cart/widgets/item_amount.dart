import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/cart/widgets/custom_icon_button.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_styles.dart';
import 'total_price.dart';

class ItemAmount extends StatelessWidget {
  const ItemAmount({super.key,required this.product});
 final Product product;
  @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder:(context,provider,child)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Row(
                children: [
                   TotalPrice(
                    product: product,
                  ),
                  const Spacer(),
                  CustomIconButton(
                  image: Assets.plus,
                  onTap: (){
                     provider.increaseProductQuantity(product);
                  },
                  ),
                  Gap(8.w),
                  Container(
                   width:124.w,
                   height:48.h,
                  decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: AppColors.kLightGray),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child:Center(
                  child: Text('${product.quantity}',
                  style:AppStyles.semiBold16(context)),
                ),
                  ),
                  Gap(8.w),
                  CustomIconButton(
                  image:Assets.minus,
                  onTap: (){
                       provider.decreaseProductQuantity(product);
                  },
                  ),
        
              ],),
      ),
    );
  }
}