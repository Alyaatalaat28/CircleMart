import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/custom_text_button.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/register/widgets/city.dart';
import 'package:nami/presentation/modules/auth/register/widgets/first_and_last_name.dart';
import 'package:nami/presentation/modules/auth/register/widgets/invite_by_someone_option.dart';

import '../../home/bottom_nav_bar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
             ProductsAppBar(text:'انشاء حساب'),
          ]
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                SvgPicture.asset(Assets.register),
                 Gap(32.h),
                const FirstAndLastName(),
                Gap(32.h),
                const City(),
                Gap(32.h),
                const InviteBySomeOneOption(),
                 Gap(200.h),
                  CustomTextButton(
                  width: double.infinity,
                   height: 53,
                   text: 'تأكيد',
                   radius: 12,
                   onPressed: ()=>pushReplacement(const BottomNavBar()),
                  
                 ),
              ]
              )
              ))
              ));
  }
}