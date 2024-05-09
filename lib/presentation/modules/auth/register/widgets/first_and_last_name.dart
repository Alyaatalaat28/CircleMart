import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
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
          label: 'الاسم الاول',
          formKey: firstNameFormKey,
          controller: firstNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يجب ادخال الاسم';
            }
            return null;
          },
        ),
      ),
      Gap(8.w),
      Expanded(
        child: NameField(
          label: 'الاسم الاخير',
          controller: lastNameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يجب ادخال اللقب';
            }
            return null;
          },
          formKey:lastNameFormKey,
        ),
      ),
    ]);
  }
}
