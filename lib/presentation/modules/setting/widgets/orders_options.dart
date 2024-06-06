import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/login/login_view.dart';
import 'package:nami/presentation/modules/favorite/favorite_view.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:nami/presentation/modules/orders/orders_view.dart';
import 'package:nami/presentation/modules/points/points_view.dart';
import 'package:provider/provider.dart';
import 'orders_item.dart';

class OrdersOptions extends StatelessWidget {
  const OrdersOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (context, provider, child) => SizedBox(
        height: 121.h,
        width: double.infinity,
        child: Container(
            decoration: ShapeDecoration(
              color: AppColors.kLightGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Center(
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OrdersItem(
                        image: Assets.orders,
                        text: tr(LocaleKeys.orders),
                        onTap: () {
                          if (provider.saveUserData.getUserToken() == '') {
                            push(const LoginView());
                          } else {
                            Provider.of<OrdersProvider>(context, listen: false)
                                .getMyOrders();
                            push(const OrdersView(
                              isFromHome: false,
                            ));
                          }
                        },
                      ),
                      OrdersItem(
                        image: Assets.favorite,
                        text: tr(LocaleKeys.favorite),
                        onTap: () {
                          if (provider.saveUserData.getUserToken() == '') {
                            push(const LoginView());
                          } else {
                            push(
                              const FavoriteView(),
                            );
                          }
                        },
                      ),
                      OrdersItem(
                        image: Assets.points,
                        text: tr(LocaleKeys.points),
                        onTap: () {
                          if (provider.saveUserData.getUserToken() == '') {
                            push(const LoginView());
                          } else {
                            push(
                              const PointsView(),
                            );
                          }
                        },
                      ),
                    ]),
              ),
            )));
  }
}
