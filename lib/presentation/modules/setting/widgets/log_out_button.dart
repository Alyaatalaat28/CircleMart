import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/auth/login/login_view.dart';
import 'log_out.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 167.w,
            height: 48.h,
            child: InkWell(
              onTap: () => push(const LoginView()),
              child: Container(
                decoration: ShapeDecoration(
                  color: AppColors.kWhite,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: AppColors.kLogOutButtonBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const LogOut(),
              ),
            )),
      ],
    );
  }
}
