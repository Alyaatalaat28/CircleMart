import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('!.. اهلا بك',
                      style: AppStyles.semiBold24(context).copyWith(
                        color: AppColors.kGray,
                        fontSize: 28,
                      ),),
                    ],
                  ),
                Gap(8.h),
                Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('.. سجل الدخول في التطبيق و اطلب الان',
                      style: AppStyles.regular14(context,AppColors.kGray)),
                  ],
                ),
              
      ],
    );
  }
}