import 'package:flutter/material.dart';
import 'package:nami/main.dart';

//push
push(Widget child)=>Navigator.of(navigator.currentContext!).push(
     MaterialPageRoute(builder: ((context) => child))
);

//pushAndRemoveUntil
pushAndRemoveUntil(Widget child)=>Navigator.of(navigator.currentContext!).pushNamedAndRemoveUntil(
   MaterialPageRoute(builder: (context) => child) as String, (route) => false
   );

//pushReplacement
pushReplacement(Widget child)=>Navigator.of(navigator.currentContext!).pushReplacement(
   MaterialPageRoute(builder: (context) => child)
);