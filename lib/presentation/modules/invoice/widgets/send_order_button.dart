import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class SendOrderButton extends StatelessWidget {
  const SendOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
       width: double.infinity,
       height:50.h,
      decoration:ShapeDecoration(
          color:AppColors.kRed,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            )),
            child:Center(
              child: TextButton(
                onPressed:(){},
                 child: Text('ارسال الطلب',
                 style: AppStyles.regular14(context, AppColors.kWhite),
                 )),
            )
    );
  }
}