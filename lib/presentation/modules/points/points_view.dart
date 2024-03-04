import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/custom_text_button.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/points/widgets/invite_friends.dart';
import 'package:nami/presentation/modules/points/widgets/my_points.dart';


class PointsView extends StatelessWidget {
  const PointsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                 const ProductsAppBar(
                    text:'النقاط'
                  ),
                 const MyPoints(),
                const CustomTextButton(
                  text: 'دعوة صديق',
                  width:203,
                  height:56,
                  radius: 16,
                 ),
                  Gap(16.h),
                 const InviteFriends(),

              ]
            ),
          ),
        )
      )
    );
  }
}