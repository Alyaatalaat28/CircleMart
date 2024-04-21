import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/data/model/response/body/register_body.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/register/widgets/city.dart';
import 'package:nami/presentation/modules/auth/register/widgets/first_and_last_name.dart';
import 'package:nami/presentation/modules/auth/register/widgets/invite_by_someone_option.dart';
import 'package:nami/presentation/modules/auth/register/widgets/phone.dart';
import 'package:provider/provider.dart';

import '../auth_provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions: const [
                  ProductsAppBar(text: 'انشاء حساب'),
                ]),
            body: Consumer<AuthProvider>(
                builder: (context, provider, child) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(children: [
                          provider.profileImage == null
                              ? InkWell(
                                  onTap: () {
                                    provider.getProfileImage();
                                  },
                                  child: SvgPicture.asset(Assets.register))
                              : Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  width: 124.w,
                                  height: 124.h,
                                  child: Image.file(
                                    File(provider.profileImage!.path),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                          Gap(32.h),
                          const FirstAndLastName(),
                          Gap(32.h),
                          const City(),
                          Gap(32.h),
                          const Phone(),
                          Gap(32.h),
                          const InviteBySomeOneOption(),
                          Gap(200.h),
                          CustomTextButton(
                              width: double.infinity,
                              height: 53,
                              text: 'تأكيد',
                              radius: 12,
                              onPressed: () {
                                if (provider.firstNameFormKey.currentState!
                                        .validate() &&
                                    provider.lastNameFormKey.currentState!
                                        .validate() &&
                                    provider.registerPhoneFormKey.currentState!
                                        .validate()) {
                                  provider.regiter(
                                    RegisterRequestBody(
                                      firstName:
                                          provider.firstNameController.text,
                                      lastName:
                                          provider.lastNameController.text,
                                      phone: provider.registerPhoneController
                                                  .text.length ==
                                              11
                                          ? provider
                                              .registerPhoneController.text
                                              .substring(1)
                                          : provider
                                              .registerPhoneController.text,
                                      cityId: provider.cityId!,
                                      phoneCode: '+20',
                                      image: File(provider.profileImage!.path),
                                    ),
                                  );
                                }
                              }),
                        ]))))));
  }
}
