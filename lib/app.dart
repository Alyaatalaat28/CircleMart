import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/main.dart';
import 'presentation/modules/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:AppColors.kWhite,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale:context.locale,
      home:const SplashView(),
    );
  }
}
