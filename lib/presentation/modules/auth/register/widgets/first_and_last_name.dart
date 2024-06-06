import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/auth/register/widgets/name_field.dart';

// ignore: must_be_immutable
class FirstAndLastName extends StatelessWidget {
   FirstAndLastName({super.key,
   this.firstNameController,this.firstNameFormKey,
   this.lastNameController,this.lastNameFormKey});

  TextEditingController? firstNameController;
  TextEditingController?lastNameController;
  Key? firstNameFormKey;
  Key? lastNameFormKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: NameField(
          label:tr(LocaleKeys.firstName),
          formKey: firstNameFormKey,
          controller: firstNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return tr(LocaleKeys.emptyFirstName);
            }
            return null;
          },
        ),
      ),
      Gap(8.w),
      Expanded(
        child: NameField(
          label:tr(LocaleKeys.lastName ),
          controller: lastNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return tr(LocaleKeys.emptyLastName);
            }
            return null;
          },
          formKey:lastNameFormKey,
        ),
      ),
    ]);
  }
}
