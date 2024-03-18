import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/setting/widgets/settings.dart';
import 'avatar.dart';
import 'log_out_button.dart';
import 'orders_options.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const Avatar(),
          Gap(20.h),
          const OrdersOptions(),
          Gap(16.h),
          const Setting(),
          Gap(16.h),
          const LogOutButton(),
        ]),
      ),
    );
  }
}
