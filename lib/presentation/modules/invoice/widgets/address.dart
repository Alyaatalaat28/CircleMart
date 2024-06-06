import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/map/location_provider.dart';
import 'package:provider/provider.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';
import 'package:nami/presentation/modules/map/map_view.dart';
import 'custom_container.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Consumer<LocationProvider>(
        builder: (context, locationProvider, child) {
          return CustomOrderListTile(
            title:tr(LocaleKeys.deliveryAddress),
            subTitle: locationProvider.locationName,
            image: Assets.location,
            trailing: true,
            onPressed: () => push(const MapView()),
          );
        },
      ),
    );
  }
}
