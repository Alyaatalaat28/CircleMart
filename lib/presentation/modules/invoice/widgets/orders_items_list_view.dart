import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/invoice/widgets/order_item.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

class OrderItemsListView extends StatelessWidget {
  const OrderItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder:(context,provider,child)=> Container(
       decoration: BoxDecoration(
        color: AppColors.kRed.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
       ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index)=> Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0,vertical:16),
            child: OrderItem(
              product:provider.cart[index],
            ),
          ),
          separatorBuilder: (BuildContext context, int index)=>SvgPicture.asset(Assets.line),
          itemCount:provider.cart.length,),
      ),
    );
  }
}