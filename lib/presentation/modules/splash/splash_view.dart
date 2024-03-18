import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/home/bottom_nav_bar.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Lottie.asset(Assets.splash)),
      ),
    );
  }

  navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      pushAndRemoveUntil(const BottomNavBar());
    });
  }
}
