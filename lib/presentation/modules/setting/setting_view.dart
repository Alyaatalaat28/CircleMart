
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'widgets/setting_view_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         appBar: AppBar(
          automaticallyImplyLeading: false,
          actions:[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:Text('المزيد',
             style:AppStyles.semiBold18(context)),
            ),
       ] ),
        body:const SettingViewBody(),
      ),
    );
  }
}