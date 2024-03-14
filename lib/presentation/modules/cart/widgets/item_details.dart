import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/modules/cart/widgets/item_price.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/assets.dart';
import 'item_amount.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key,required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder:(context,provider,child)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap:(){
                    provider.removeFromCart(product);
                  },
                  child: SvgPicture.asset(Assets.delete)
                  ),
                const Spacer(),
                const  ItemPrice(),
                  Image(
                  image:AssetImage(product.image)
                  ),
              ],
            ),
           ItemAmount(
            product: product,
          ),
          ],
        ),
      ),
    );
  }
}