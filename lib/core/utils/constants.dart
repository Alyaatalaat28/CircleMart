import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/category/category_view.dart';
import 'package:nami/presentation/modules/home/home_view.dart';
import 'package:nami/presentation/modules/invoice/models/payment_method_model.dart';
import 'package:nami/presentation/modules/map/map_view.dart';
import 'package:nami/presentation/modules/setting/setting_view.dart';

List<Widget> screens = const [
  HomeView(),
  CategoryView(),
  MapView(),
  SettingView(),
];

List<Payment> paymentMethods = [
  Payment(text: tr(LocaleKeys.cash), image: Assets.cash),
  Payment(text:tr(LocaleKeys.visa), image: Assets.visa),
  Payment(text: tr(LocaleKeys.masterCard), image: Assets.mcard),
  Payment(text:tr(LocaleKeys.applePay), image: Assets.apay),
];
