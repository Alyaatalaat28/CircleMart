import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/utils/constants.dart';

import '../../../../../core/utils/size_config.dart';

class IconStack extends StatelessWidget {
  const IconStack({super.key,required this.image,required this.text});
  final String image;
  final String? text;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return  Stack(
              alignment:AlignmentDirectional.topEnd,
              children:[
                 SizedBox(
                  width:SizeConfig.width*0.075,
                  height:SizeConfig.width*0.075,           
                  child: SvgPicture.asset(image)),
                 SizedBox(
                  width:SizeConfig.width*0.035,
                  height:SizeConfig.width*0.035,
                   child: Container(
                     decoration:const ShapeDecoration(
                       color:kRed,
                       shape:CircleBorder(
                        side:BorderSide(
                          color:kLightGray,
                          width:1,
                        )
                       ),
                   ),
                   child:Center(
                    child: Text(
                      text??'',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: SizeConfig.width*0.02,
                      ),)
                    ),
                   ),
                 ),
                 ]);
  }
}