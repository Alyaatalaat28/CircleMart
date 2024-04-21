import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/cart/cart_view.dart';
import 'custom_icon_button.dart';
import 'welcome_user.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.logo),
            const Gap(10),
            const WelcomeUser(),
            const Spacer(),
            const CustomIconButton(image: Assets.notification),
            const Gap(8),
            CustomIconButton(
              image: Assets.cart,
              text: '1',
              onTap: () {
                push(const CartView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
