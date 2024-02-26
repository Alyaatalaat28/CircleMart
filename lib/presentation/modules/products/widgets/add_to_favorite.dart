import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';

import '../../../../core/resources/colors.dart';

class AddToFavorite extends StatelessWidget {
  const AddToFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0,),
      child: Row(
                  children:[
                    IconButton(
                      onPressed: () {  },
                      icon: const Icon(Icons.favorite_rounded,
                        color:AppColors.kFavoriteIcon,
                     ),                     
                    ),
                    const Spacer(),
                    Text('جمبري',
                    style:AppStyles.semiBold18(context).copyWith(
                      color: AppColors.kRed
                    ))
                  ]
                ),
    );
  }
}