import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/custom_text_field.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key,required this.image,required this.text});
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:5.0),
      child: Row(
       children: [
         const Spacer(),
        CustomTextField(label: text,),
        Gap(8.w),
        SvgPicture.asset(image,)
       ],
      ),
    );
  }
}