import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/custom_text_button.dart';
import 'package:nami/presentation/modules/auth/login/widgets/country_flag.dart';
import 'package:nami/presentation/modules/auth/login/widgets/logo.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/login/widgets/phone_number.dart';
import 'package:nami/presentation/modules/auth/login/widgets/welcome_user.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
             ProductsAppBar(text:''),
          ]
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                 const AppLogo(),
                  Gap(64.h),
                  const WelcomeUser(),
                   Gap(24.h),
                  const CountryFlag(),
                  Gap(16.h),
                  const PhoneNumber(),
                  Gap(24.h),
                  const CustomTextButton(
                    width: double.infinity,
                    height: 53,
                    text: 'دخول',
               