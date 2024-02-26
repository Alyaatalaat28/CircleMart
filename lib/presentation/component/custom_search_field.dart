import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'inputs/text_form_field.dart';

class SearchField extends StatelessWidget {
   const SearchField({super.key,required this.controller});
    final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
            height:56.h,
            padding:const EdgeInsets.all(16),
            decoration:ShapeDecoration(
              color:AppColors.kLightGray,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
              child: Row(
              children:[
                CustomTextFormField(
                  controller:controller,
                ),
                const Gap(11),
                SvgPicture.asset(Assets.search),
              ]),
      ),
    );
  }
}