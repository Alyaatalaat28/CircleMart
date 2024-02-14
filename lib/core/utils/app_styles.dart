import 'package:flutter/material.dart';
import 'package:nami/core/utils/constants.dart';
import 'package:nami/core/utils/size_config.dart';

abstract class AppStyles{

static TextStyle regular12(BuildContext context,Color color){
  return TextStyle(
      color:color,
      fontSize:getResponsiveFontSize(context,fontSize:12),
      fontFamily:'Madani',
      fontWeight:FontWeight.w400,
  );
}
static TextStyle regular10(BuildContext context){
  return TextStyle(
      color:kBlack,
      fontSize:getResponsiveFontSize(context,fontSize:10),
      fontFamily:'Madani',
      fontWeight:FontWeight.w400,
  );
}
static TextStyle regular14(BuildContext context,Color color){
  return TextStyle(
      color:color,
      fontSize:getResponsiveFontSize(context,fontSize:14),
      fontFamily:'Madani',
      fontWeight:FontWeight.w400,
  );
}
static TextStyle semiBold18(BuildContext context){
  return TextStyle(
      color:kBlack,
      fontSize:getResponsiveFontSize(context,fontSize:18),
      fontFamily:'Madani',
      fontWeight:FontWeight.w600,
  );
}
static TextStyle semiBold16(BuildContext context){
  return TextStyle(
      color:kBlack,
      fontSize:getResponsiveFontSize(context,fontSize:16),
      fontFamily:'Madani',
      fontWeight:FontWeight.w600,
  );
}
static TextStyle semiBold14(BuildContext context){
  return TextStyle(
      color:kBlack,
      fontSize:getResponsiveFontSize(context,fontSize:16),
      fontFamily:'Madani',
      fontWeight:FontWeight.w600,
  );
}

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
    return width/300;
  }else if(width<SizeConfig.desktop){
    return width/500;
  }else{
    return width/700;
  }
}
}