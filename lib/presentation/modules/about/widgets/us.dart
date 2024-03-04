import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
     children: [
       const Spacer(),
       Text('من نحن',
       style:AppStyles.semiBold18(context),
       ),
       Gap(8.w),
       SvgPicture.asset(Assets.aboutUs),
     ],
    );
  }
}