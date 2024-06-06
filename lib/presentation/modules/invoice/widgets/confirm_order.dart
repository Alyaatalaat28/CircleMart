import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/response/body/order_cost.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';
import 'package:nami/presentation/modules/map/location_provider.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) {
        final locationProvider = Provider.of<LocationProvider>(context);
        final latitude = locationProvider.currentLocation.latitude;
        final longitude = locationProvider.currentLocation.longitude;

        return Center(
          child: GestureDetector(
            onTap: () {
              List<Detail> detailsList = details(context);
              OrderCost orderCost = OrderCost(
                latitude: latitude,
                longitude: longitude,
                details: detailsList,
              );
              provider.calculateOrderCost(orderCost);
            },
            child: Text(tr(LocaleKeys.confirm),
                style: AppStyles.regular14(context, AppColors.kWhite)),
          ),
        );
      },
    );
  }

  List<Detail> details(BuildContext context) {
    return Provider.of<SharedPref>(context, listen: false).cart.map((product) {
      return Detail(
        productId: product.id,
        qty: product.weightUnit!,
        netCost: product.price!,
      );
    }).toList();
  }
}
