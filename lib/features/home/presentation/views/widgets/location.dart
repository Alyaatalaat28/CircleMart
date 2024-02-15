import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/utils/app_styles.dart';
import 'package:nami/core/utils/assets.dart';
import 'package:nami/core/utils/constants.dart';
import 'package:nami/core/utils/size_config.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Container(
      height:56,
      width:SizeConfig.width*0.35,
      padding:const EdgeInsets.all(16),
          decoration:ShapeDecoration(
            color:kRed,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            children:[
              SvgPicture.asset(Assets.dropDownMenu),
              const Gap(11),
              Text('القاهرة',
              style:AppStyles.regular14(context, kWhite)
            ),
            const Gap(11),
            SvgPicture.asset(Assets.location),
            ]),
    );
  }
}