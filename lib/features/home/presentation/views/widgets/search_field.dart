import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/utils/assets.dart';
import 'package:nami/core/utils/constants.dart';

import 'search_text_form_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
            height:56,
            padding:const EdgeInsets.all(16),
            decoration:ShapeDecoration(
              color:kLightGray,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
              child: Row(
              children:[
                SearchTextFormField(),
                const Gap(11),
                SvgPicture.asset(Assets.search),
              ]),
      ),
    );
  }
}