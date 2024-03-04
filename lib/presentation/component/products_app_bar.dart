import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';

class ProductsAppBar extends StatelessWidget {
  const ProductsAppBar({super.key,required this.text,this.onTapBack});

 final String text;
 final VoidCallback? onTapBack;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children:[
          const Spacer(),
          Text(text,
          style:AppStyles.semiBold18(context)
          ),
          Gap(10.w),
          InkWell(
             onTap: onTapBack ?? () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(Assets.arrow))
        ]
      ),
    );
  }
}