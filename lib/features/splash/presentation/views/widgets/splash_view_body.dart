import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:nami/core/utils/app_router.dart';
import 'package:nami/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(Assets.splash));
  }

  navigateToHome(){
    Future.delayed(
      const Duration(seconds:4),(){
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
    );
  }
}