import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';
import 'package:nami/presentation/modules/map/location_provider.dart';
import 'package:provider/provider.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => Container(
        height: 315.h,
        width: double.infinity,
        decoration: ShapeDecoration(
            color: AppColors.kRed.withOpacity(0.08),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
        child: Column(
          children: [
             CustomOrderListTile(
              trailing: false,
              image: Assets.branch,
              title:tr(LocaleKeys.branch),
              subTitle: 'شارع الحرية',
            ),
             CustomOrderListTile(
              image: Assets.location,
              title:tr(LocaleKeys.deliveryAddress),
              subTitle: context.read<LocationProvider>().locationName,
              trailing: false,
            ),
            CustomOrderListTile(
              image: Assets.payment,
              title:tr(LocaleKeys.paymentMethod),
              subTitle: provider.paymentController.text,
              trailing: false,
            ),
            CustomOrderListTile(
              image: Assets.note,
              title:tr(LocaleKeys.notes),
              subTitle: provider.noteController.text,
              trailing: false,
            ),
          ],
        ),
      ),
    );
  }
}
