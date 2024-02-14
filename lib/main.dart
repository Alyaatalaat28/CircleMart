import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/utils/app_router.dart';
import 'package:nami/core/utils/constants.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
  DevicePreview(
    builder:(context)=> EasyLocalization(
        supportedLocales:supportedLanguages,
        path: 'translations',
        fallbackLocale:supportedLanguages[0],
        child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder:DevicePreview.appBuilder,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale:DevicePreview.locale(context),
      routerConfig: AppRouter.router,
    );
  }
}

