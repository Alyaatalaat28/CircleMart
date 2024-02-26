import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key,required this.image,required this.text,});
 final String image;
 final String text;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          IconButton(
            onPressed: () {  },
             icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color:AppColors.kGray,
              size:15.w,
             ),
          ),
          const Spacer(),
          Text(text,
          style: AppStyles.regular14(context, AppColors.kBlack),),
          Gap(7.w),
          SvgPicture.asset(image,
          ),
        ],
        ),
    );
  }
}