import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/modules/invoice/models/payment_method_model.dart';

final supportedLanguages=<Locale> [
  const Locale('en','US'),
  const Locale('ar','EG')
];

List<String> sliderImages=[
  Assets.sliderImage,
  Assets.sliderImage,
  Assets.sliderImage
];

List<Payment> paymentMethods=[
  Payment(text: 'كاش', image:Assets.cash),
  Payment(text: 'فيزا', image:Assets.visa),
  Payment(text: 'ماستركارد', image:Assets.mcard),
  Payment(text: 'ابل باي', image:Assets.apay),
];



