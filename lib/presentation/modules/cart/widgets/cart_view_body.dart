import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/invoice/payment_and_delivery_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import '../../../../core/resources/app_styles.dart';
import '../../../component/products_app_bar.dart';
import 'details_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const ProductsAppBar(
          text: 'السلة',
          ),
          Gap(28.h),
          const DetailsListView(),
          const Spacer(),
         CustomBottomSheet(
          height: 45, 
          width: 103,
          text: '576',
          child: InkWell(
            onTap: (){
              push(const PaymentAndDelivery());
            },
            child: Center(
              child: Text('اطلب الأن',
              style: AppStyles.regular14(context, AppColors.kWhite),),
            ),
          ),),
      ],
    );
  }
}