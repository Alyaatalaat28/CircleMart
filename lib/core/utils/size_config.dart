import 'package:flutter/material.dart';

class SizeConfig{
  static const double tablet=800;
  static const double desktop=1200;

  static late double width,height;
  static init(BuildContext context){
    width=MediaQuery.sizeOf(context).width;
    height=MediaQuery.sizeOf(context).height;
  }
  }