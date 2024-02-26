import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:7.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          Text('اهلا وسهلا',
          style:AppStyles.regular12(
            context, AppColors.kGray
            ),
          ),
          Text('محمد العشري',
           style:AppStyles.semiBold16(context)
           ),
        ],
      ),
    );
  }
}