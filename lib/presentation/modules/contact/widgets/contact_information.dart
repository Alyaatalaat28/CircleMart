import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/modules/contact/widgets/custom_divider.dart';

import 'contact_item.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children:[
              const ContactItem(image:Assets.person, text: 'الاسم',keyboardType: TextInputType.name),
              const CustomDivider(),
                Gap(20.h),
              const ContactItem(image:Assets.email, text: 'البريد الالكتروني',keyboardType: TextInputType.emailAddress),
              const CustomDivider(),
                Gap(20.h),
              const ContactItem(image:Assets.title, text: 'عنوان الرسالة',keyboardType: TextInputType.text),
              const CustomDivider(),
               Gap(20.h),
              const ContactItem(image:Assets.note, text: 'الرسالة',keyboardType: TextInputType.text),
                Gap(100.h),
              const CustomDivider(),
      ]
    );
  }
}