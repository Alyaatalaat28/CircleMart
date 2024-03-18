import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/modules/cart/widgets/item_price.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/assets.dart';
import 'item_amount.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      provider.removeFromCart(product);
                    },
                    child: SvgPicture.asset(Assets.delete)),
                const Spacer(),
                 ItemPrice(
                  product: product,
                ),
                CachedNetworkImage(
                    imageUrl: product.image!,
                    errorWidget: (context, url, error) =>const Icon(Icons.error),
                    width:90,
                    height: 90,
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
