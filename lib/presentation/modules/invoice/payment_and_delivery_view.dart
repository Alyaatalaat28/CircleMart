import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/invoice/widgets/confirm_order.dart';
import 'package:nami/presentation/modules/invoice/widgets/orders_items_list_view.dart';
import 'package:nami/presentation/sheet/bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'widgets/address.dart';
import 'widgets/notes.dart';
import 'widgets/payment_method.dart';

class PaymentAndDelivery extends StatelessWidget {
  const PaymentAndDelivery({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => SafeArea(
          child: Scaffold(
              appBar: AppBar(automaticallyImplyLeading: false, actions: const [
                ProductsAppBar(text: 'الدفع والتوصيل'),
              ]),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    const OrderItemsListView(),
                    Gap(12.h),
                    const Address(),
                    Gap(12.h),
                    const PaymentMethod(),
                    Gap(12.h),
                    const Notes(),
                    Gap(210.h),
                    CustomBottomSheet(
                      width: 79,
                      height: 45,
                      text: '${provider.totalPriceForCartProuducts()}',
                      child: const ConfirmOrder(),
                    )
                  ]),
                ),
              ))),
    );
  }
}
