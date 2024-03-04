import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';
import 'package:nami/presentation/modules/map/location.dart';

import 'custom_container.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomContainer(
      child: CustomOrderListTile(
        title: 'عنوان التوصيل',
        subTitle: 'شارع الحرية - الجيزة',
        image: Assets.location,
        trailing: true,
        onPressed: ()=>push(const LoationView()),
        
      ),);
  }
}