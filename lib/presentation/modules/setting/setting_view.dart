import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/setting/widgets/log_out_button.dart';
import 'package:nami/presentation/modules/setting/widgets/settings.dart';
import 'widgets/avatar.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Avatar(),
          Gap(20.h),
          const Setting(),
          Gap(16.h),
          const LogOutButton(),
        ]),
      ),
    )
      ),
    );
  }
}
