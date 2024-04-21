import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr(LocaleKeys.hello),
            style: AppStyles.regular12(context, AppColors.kGray),
          ),
          Text('محمد العشري', style: AppStyles.semiBold16(context)),
        ],
      ),
    );
  }
}
