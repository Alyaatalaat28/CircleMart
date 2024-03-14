import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/modules/cart/widgets/cart_empty.dart';
import 'package:nami/presentation/modules/invoice/payment_and_delivery_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_styles.dart';
import 'details_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

 @override
  Widget build(BuildContext context) {
    return  Consumer<SharedPref>(
      builder:(context,provider,child){
      if(provider.cart.isNotEmpty){
      return Column(
        children: [
            const DetailsListView(),
            const Spacer(),
           CustomBottomSheet(
            height: 45, 
            width: 103,
            text: '${provider.totalPriceForCartProuducts()}',
            child:InkWell(
              onTap: (){
                push(const PaymentAndDelivery());
              },
              child: Center(
                child: Text('اطلب الأن',
                style: AppStyles.regular14(context, AppColors.kWhite),),
              ),
            )),
        ],
      );
      }else{
        return  const EmptyCart();
      }
      }
    );
    
  }
}