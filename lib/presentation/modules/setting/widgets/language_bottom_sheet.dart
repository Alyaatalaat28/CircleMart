import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/modules/setting/widgets/choose_language.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 242,
        child: Column(
           children:[
                  Row(
                  children:[
                    InkWell(
                      onTap:()=>Navigator.pop(context),
                      child: SvgPicture.asset(Assets.x)
                      ),
                    const Spacer(),
                    Text('اللغة',
                    style:AppStyles.semiBold18(context)),
                  ]
                ),
                 const ChooseLanguage(),
                   Gap(16.h),
                   const CustomTextButton(
                    width: double.infinity,
                     height: 60,
                      text: 'تأكيد', 
                      radius: 16,),
           ]
        ),
      ),
    );
  }
}