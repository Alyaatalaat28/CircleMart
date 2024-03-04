import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
    int selectedLanguage=0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
           RadioListTile(
            title:Text('عربي',
            style: AppStyles.regular14(context, AppColors.kBlack),
            ),
                    value: 0,
                     groupValue: selectedLanguage, 
                     onChanged: (value){
                      setState(() {
                        selectedLanguage=value!;
                      });
                     }, 
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                     if (states.contains(MaterialState.selected)) {
                      return AppColors.kRed ; 
                       }
                      return AppColors.kRed ; // 
                   },)
                     ),
                  RadioListTile(
                  title:Text('English',
                    style: AppStyles.regular14(context, AppColors.kBlack),
                      ),
                    value: 1,
                     groupValue: selectedLanguage, 
                      onChanged: (value){
                      setState(() {
                        selectedLanguage=value!;
                      });
                     },
                      activeColor:AppColors.kRed ,
                   fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                     if (states.contains(MaterialState.selected)) {
                      return AppColors.kRed ; 
                       }
                      return AppColors.kRed ; // 
                   },)
                     ),
        ],
      ),
    );
  }
}