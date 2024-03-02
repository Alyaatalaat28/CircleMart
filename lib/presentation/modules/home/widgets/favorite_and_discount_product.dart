import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';

class ProductFavoriteAndDiscount extends StatelessWidget {
  const ProductFavoriteAndDiscount({super.key,required this.iconColor});
 final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
         const Spacer(),
         SizedBox(
             width:32.w,
             height:32.h,
           child:  CircleAvatar(
                  backgroundColor:AppColors.kWhite,
                  radius:20.r,         
            child: Icon(
              Icons.favorite_rounded,
              color:iconColor,
              size:18,
              ),                      
            ),
           
         ),
      ]
    );
  }
  }