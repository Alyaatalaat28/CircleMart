import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/utils/assets.dart';
import 'custom_icon_button.dart';
import 'welcome_user.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:[
        const CustomIconButton(
          image:Assets.cart,
          text:'1',
        ),
        const Gap(8),
        const CustomIconButton(
          image:Assets.notification
        ),
        const Spacer(),
        const WelcomeUser(),
        const Gap(10),
        SvgPicture.asset(Assets.logo),

      ],
    );
  }
}