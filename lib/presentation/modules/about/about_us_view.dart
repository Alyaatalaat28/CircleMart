import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/about/widgets/us.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
        return   SafeArea(
      child: Scaffold(
        appBar:AppBar(
           automaticallyImplyLeading: false,
          actions:const[
             ProductsAppBar(
                    text: 'عن التطبيق'
                    ),
          ]
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                  SvgPicture.asset(Assets.ourLogo),
                   Gap(35.h),
                  const About(),
                  Gap(24.h),
                  Text('هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص',
                  textDirection: TextDirection.rtl,
                 style: AppStyles.regular14(context, AppColors.kGray),)
            ])
            ))
            ));
  }
}