import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/contact/contact_us_provider.dart';
import 'package:nami/presentation/modules/contact/widgets/custom_divider.dart';
import 'package:provider/provider.dart';
import 'contact_item.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactUsProvider>(
      builder: (context, provider, child) => Column(
        children: [
        ContactItem(
            image: Assets.person,
            text:tr(LocaleKeys.name),
            controller: provider.nameController,
            keyboardType: TextInputType.name,
            formKey:provider.nameFormKey,
             validator: (value) {
            if (value == null || value.isEmpty) {
              return tr(LocaleKeys.emptyFirstName);
            }
            return null;
          },
            ),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.email,
            text:tr(LocaleKeys.email),
            controller: provider.emailController,
            keyboardType: TextInputType.emailAddress,
            formKey: provider.emailFormKey,
             validator: (value) {
            if (value == null || value.isEmpty) {
              return tr(LocaleKeys.emptyLastName);
            }
            return null;
          },),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.title,
            text:tr(LocaleKeys.messageTitle),
            formKey: provider.messageTitleFormKey,
            controller: provider.messageTitleController,
            keyboardType: TextInputType.text),
        const CustomDivider(),
        Gap(20.h),
        ContactItem(
            image: Assets.note,
            text:tr(LocaleKeys.message),
            formKey: provider.messageBodyFormKey,
            controller: provider.messageController,
            keyboardType: TextInputType.text,
           ),
        Gap(100.h),
        const CustomDivider(),
      ]),
    );
  }
}
