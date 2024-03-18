import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.ourLogo),
      ],
    );
  }
}
