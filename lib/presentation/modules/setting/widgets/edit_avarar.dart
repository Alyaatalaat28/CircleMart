import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
       const Image(
         image:AssetImage((Assets.avatarImage),),
          ),
        Container(
          decoration:const ShapeDecoration(
          color:AppColors.kWhite,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
            topRight:Radius.circular(36) ,
            bottomRight: Radius.circular(36),
            ),
          ),
       ) ,
          child:SvgPicture.asset(Assets.userPen),
          )
      ],
    );
  }
}