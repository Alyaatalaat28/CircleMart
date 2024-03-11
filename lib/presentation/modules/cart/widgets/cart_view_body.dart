import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/invoice/payment_and_delivery_view.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_styles.dart';
import 'details_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

 @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder:(context,provider,child)=>Column(
        children: [
            const DetailsListView(),
            const Spacer(),
           CustomBottomSheet(
            height: 45, 
            width: 103,
            text: '${provider.totalPriceForCartProuducts()}',
            child: provider.cart.isNotEmpty? InkWell(
              onTap: (){
                pushReplacement(const PaymentAndDelivery());
              },
              child: Center(
                child: Text('اطلب الأن',
                style: AppStyles.regular14(context, AppColors.kWhite),),
              ),
            ):Container(),),
        ],
      ),
    );
  }
}