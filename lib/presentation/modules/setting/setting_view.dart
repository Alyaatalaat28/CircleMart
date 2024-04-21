import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'widgets/setting_view_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text(tr(LocaleKeys.more), style: AppStyles.semiBold18(context)),
          ),
        ),
        body: const SettingViewBody(),
      ),
    );
  }
}
