import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/edit_profile/widgets/avatar.dart';
import 'package:nami/presentation/modules/auth/register/widgets/first_and_last_name.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
             ProductsAppBar(text:'تعديل الحساب'),
          ]
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                const AvatarImage(),
                Gap(32.h),
                const FirstAndLastName(),
                 Gap(400.h),
                 const CustomTextButton(
                  width: double.infinity,
                   height: 53,
                   text: 'تأكيد',
                   radius: 12,
                  
                 ),
              ]
              )
              ))
              ));
  }
}