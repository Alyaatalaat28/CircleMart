import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import '../modules/home/widgets/product_price_and_cart.dart';
import '../modules/home/widgets/product_stack.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key,this.iconColor=AppColors.kFavoriteIcon});
 final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
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
                   ),
                    const Spacer(),
                    Text('جمبري',
                    style:AppStyles.regular14(context,AppColors.kBlack)),
                    const Gap(8),
                    const ProductPriceAndCart(),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}