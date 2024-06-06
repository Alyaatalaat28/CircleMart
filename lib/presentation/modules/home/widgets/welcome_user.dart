import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder:(context,provider,_)=> Padding(
        padding: const EdgeInsets.only(top: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr(LocaleKeys.hello),
              style: AppStyles.regular12(context, AppColors.kGray),
            ),
            Text(provider.saveUserData.getUserToken() != ''?
            '${provider.saveUserData.getUserData()!.firstName} ${provider.saveUserData.getUserData()!.lastName}':
            'User',
             style: AppStyles.semiBold16(context)),
          ],
        ),
      ),
    );
  }
}
