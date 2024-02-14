import 'package:flutter/material.dart';
import 'package:nami/core/utils/app_styles.dart';
import 'package:nami/core/utils/constants.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment:CrossAxisAlignment.end,
      children: [
        Text('اهلا وسهلا',
        style:AppStyles.regular12(
          context, kGray
          ),
        ),
        Text('محمد العشري',
         style:AppStyles.semiBold16(context)
         ),
      ],
    );
  }
}