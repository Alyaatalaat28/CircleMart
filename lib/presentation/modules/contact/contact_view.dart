import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/component/custom_text_button.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/contact/widgets/contact_information.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions:const [
                 ProductsAppBar(
                      text: 'تواصل معنا'
                 )
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                  SvgPicture.asset(Assets.contact),
                   Gap(48.h),
                 const ContactInformation(),
                  Gap(48.h),
                  const CustomTextButton(
                    width: double.infinity,
                     height: 60,
                      text: 'ارسال',
                      radius: 16,),
                  
                
              ],
            ),
          ),
        )
      ),
    );
  }
}