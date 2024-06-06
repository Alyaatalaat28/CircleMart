import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';


class AppLocalization {
  static changeApplang(BuildContext context) {
    if (Provider.of<AuthProvider>(context,listen:false).saveUserData.getLang() == 'ar') {
      EasyLocalization.of(context)!.setLocale(const Locale('en', 'US'));
    } else {
      EasyLocalization.of(context)!.setLocale(const Locale('ar', 'EG'));
    }
  }
}