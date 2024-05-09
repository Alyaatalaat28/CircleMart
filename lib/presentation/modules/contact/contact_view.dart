import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/contact/widgets/contact_information.dart';
import 'package:provider/provider.dart';
import '../../../data/model/response/contact_us.dart';
import 'contact_us_provider.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: const [ProductsAppBar(text: 'تواصل معنا')],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Consumer<ContactUsProvider>(
                builder: (context, provider, child) => Column(
                  children: [
                    SvgPicture.asset(Assets.contact),
                    Gap(48.h),
                    const ContactInformation(),
                    Gap(48.h),
                    CustomTextButton(
                      width: double.infinity,
                      height: 60,
                      text: 'ارسال',
                      radius: 16,
                      onPressed: () {
                        provider.contactUsMethod(
                          ContactUs(
                          name: provider.nameController.text,
                          email: provider.emailController.text,
                          message: provider.messageController.text,
                          subject: provider.messageTitleController.text,
                          phone:Provider.of<AuthProvider>(context,listen:false).saveUserData.getUserData()!.phone
                                         
                        ));

                        pop();
                        provider.clearTextFields();
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
