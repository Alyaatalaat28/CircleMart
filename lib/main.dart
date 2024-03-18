import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/app.dart';
import 'package:nami/core/utils/constants.dart';
import 'package:nami/injection.dart' as injection;
import 'package:nami/providers.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await injection.init();

  runApp(AppMultiProvider(
    child: EasyLocalization(
        supportedLocales: supportedLanguages,
        path: 'assets/translations',
        fallbackLocale: supportedLanguages[0],
        child: const MyApp()),
  )); 
}
