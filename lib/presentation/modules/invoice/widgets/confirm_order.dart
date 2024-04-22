import 'package:flutter/cupertino.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/response/body/order_cost.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => Center(
        child: GestureDetector(
          onTap: () {
            List<Detail> detailsList = details(context);
            OrderCost orderCost = OrderCost(
              latitude: 30.599618,
              longitude: 30.966453,
              details: detailsList,
            );
            provider.calculateOrderCost(orderCost);
          },
          child: Text('تأكيد',
              style: AppStyles.regular14(context, AppColors.kWhite)),
        ),
      ),
    );
  }

  List<Detail> details(context) {
    return Provider.of<SharedPref>(context, listen: false).cart.map((product) {
      return Detail(
        productId: product.id,
        qty: product.weightUnit!,
        netCost: product.price!,
      );
    }).toList();
  }
}
