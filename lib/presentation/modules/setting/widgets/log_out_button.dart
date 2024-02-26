
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'log_out.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        SizedBox(
          width:167.w,
          height:48.h,
          child:Container(
          decoration:ShapeDecoration(
              color:AppColors.kWhite,
              shape:RoundedRectangleBorder(
                side:const BorderSide(
                  color:AppColors.kLogOutButtonBorderColor,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
           ) ,
           child:const LogOut(),
           )
           
        ),
      ],
    );
  }
}