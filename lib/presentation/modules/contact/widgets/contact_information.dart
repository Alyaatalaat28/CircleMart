import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/modules/contact/contact_us_provider.dart';
import 'package:nami/presentation/modules/contact/widgets/custom_divider.dart';
import 'package:provider/provider.dart';

import 'contact_item.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactUsProvider>(
      builder: (context, provider, child) => Column(children: [
        ContactItem(
            image: Assets.person,
            text: 'الاسم',
            controller: provider.nameController,
            keyboardType: TextInputType.name),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.email,
            text: 'البريد الالكتروني',
            controller: provider.emailController,
            keyboardType: TextInputType.emailAddress),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.title,
            text: 'عنوان الرسالة',
            controller: provider.messageTitleController,
            keyboardType: TextInputType.text),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.note,
            text: 'الرسالة',
            controller: provider.messageController,
            keyboardType: TextInputType.text),
        Gap(100.h),
        const CustomDivider(),
      ]),
    );
  }
}
