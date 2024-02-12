import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nami/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(Assets.splash);
  }
}