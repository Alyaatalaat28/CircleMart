import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/model/response/body/register_body.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/edit_profile/widgets/avatar.dart';
import 'package:nami/presentation/modules/auth/register/widgets/first_and_last_name.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions:  [
                  ProductsAppBar(text:tr(LocaleKeys.modifyTheAccount )),
                ]),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Consumer<AuthProvider>(
                  builder:(context,provider,child){
                    provider.firstNameEditController.text=provider.saveUserData.getUserData()!.firstName;
                    provider.lastNameEditController.text=provider.saveUserData.getUserData()!.lastName;
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                        const AvatarImage(),
                        Gap(32.h),
                         FirstAndLastName(
                            firstNameController:provider.firstNameEditController ,
                            firstNameFormKey:provider.firstNameEditFormKey ,
                            lastNameController:provider.lastNameEditController ,
                            lastNameFormKey:provider.lastNameEditFormKey,
                           ),
                        Gap(400.h),
                         CustomTextButton(
                          width: double.infinity,
                          height: 53,
                          text:tr(LocaleKeys.confirm ),
                          radius: 12,
                          onPressed:(){
                             provider.editProfile(
                              RegisterRequestBody(
                                firstName:provider.firstNameEditController.text, 
                                lastName:provider.lastNameEditController.text, 
                                phone:'${provider.saveUserData.getUserData()!.phone}' , 
                                phoneCode:'${provider.saveUserData.getUserData()!.phoneCode}',
                                cityId:provider.saveUserData.getUserData()!.cityId! ,
                                image:File(provider.profileImage!.path) ,
                              )
                             );
                          },
                        ),
                      ])
                      );}
                ))
                    ));
  }
}
