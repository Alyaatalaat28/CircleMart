import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

// ignore: must_be_immutable
class ContactItem extends StatelessWidget {
   ContactItem(
      {super.key,
      required this.image,
      required this.text,
      required this.controller,
      required this.keyboardType,
       this.formKey,
       this.validator,
      });

  final String text;
  final String image;
  final TextInputType keyboardType;
  final TextEditingController controller;
    String? Function(String?)? validator;
    Key? formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
          ),
          Gap(8.w),
          Expanded(
            child: CustomTextField(
              controller: controller,
              label: text,
              formKey:formKey ,
              validator: validator,
              keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
