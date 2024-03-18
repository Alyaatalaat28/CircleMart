
import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/modules/category/category_view.dart';
import 'package:nami/presentation/modules/home/home_view.dart';
import 'package:nami/presentation/modules/invoice/models/payment_method_model.dart';
import 'package:nami/presentation/modules/map/map_view.dart';
import 'package:nami/presentation/modules/setting/setting_view.dart';

final supportedLanguages = <Locale>[
  const Locale('en', 'US'),
  const Locale('ar', 'EG')
];

  List<Widget> screens = const [
     SettingView(),
     MapView(),
     CategoryView(),
     HomeView(),
  ];

List<Payment> paymentMethods = [
  Payment(text: 'كاش', image: Assets.cash),
  Payment(text: 'فيزا', image: Assets.visa),
  Payment(text: 'ماستركارد', image: Assets.mcard),
  Payment(text: 'ابل باي', image: Assets.apay),
];
