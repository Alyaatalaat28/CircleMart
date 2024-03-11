import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';


class ProductPriceAndCart extends StatelessWidget {
  const ProductPriceAndCart({super.key,required this.price,this.onTap});
final double price;
final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:[
        InkWell(
          onTap:onTap,
        child: SizedBox(
            width:32.w,   
            height:32.h,  
           child: Container(
            decoration:const ShapeDecoration(
                  color:AppColors.kRed,
                  shape:CircleBorder(),
                     ),
                  child:Center(
                    child: SvgPicture.asset(Assets.addToCart,
                    ),
                  ),
           ),
         )),
         const Spacer(),
         Text('ج.م',
          style:AppStyles.regular10(context)),
         const Gap(5),
         Text('$price',
         style:AppStyles.semiBold16(context))
      ]
    );
  }
  }