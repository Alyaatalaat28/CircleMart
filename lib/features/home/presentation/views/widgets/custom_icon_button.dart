import 'package:flutter/material.dart';
import 'package:nami/core/utils/constants.dart';
import 'package:nami/core/utils/size_config.dart';
import 'icon_stack.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key,required this.image,this.text});
  final String image;
  final String? text;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return  ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: SizeConfig.width/8,
      ),
      child: AspectRatio(
        aspectRatio:0.01/0.01,
        child: Container(
          decoration:ShapeDecoration(
            color:kLightGray,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Center(
            child:IconStack(
              image:image,
              text:text,
            ),
            ),
        ),
      ),
    );
  }
}