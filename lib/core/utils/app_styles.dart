import 'package:flutter/material.dart';
import 'package:nami/core/utils/size_config.dart';

abstract class AppStyles{


static double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double scaleFactor=getScaleFactor(context);
  double responsiveFontSize=fontSize*scaleFactor;

  double lowerLimit=fontSize*0.8;
  double upperLimit=fontSize*1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


static double getScaleFactor(BuildContext context){
  double width=MediaQuery.sizeOf(context).width;
  if(width<SizeConfig.tablet){
    return width/550;
  }else if(width<SizeConfig.desktop){
    return width/1000;
  }else{
    return width/1920;
  }
}
}