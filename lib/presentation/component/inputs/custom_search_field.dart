import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'text_form_field.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {super.key, required this.controller, this.onChanged, this.onTap});
  final TextEditingController controller;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 56.h,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: AppColors.kLightGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(children: [
            SvgPicture.asset(Assets.search),
            const Gap(11),
            CustomTextFormField(
              controller: controller,
              onChanged: onChanged,
            ),
          ]),
        ),
      ),
    );
  }
}
