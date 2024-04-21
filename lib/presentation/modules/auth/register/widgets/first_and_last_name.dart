import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/register/widgets/name_field.dart';
import 'package:provider/provider.dart';

class FirstAndLastName extends StatelessWidget {
  const FirstAndLastName({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) => Row(children: [
        Expanded(
          child: NameField(
            label: 'الاسم الاول',
            formKey: provider.firstNameFormKey,
            controller: provider.firstNameController,
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
            controller: provider.lastNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'يجب ادخال اللقب';
              }
              return null;
            },
            formKey: provider.lastNameFormKey,
          ),
        ),
      ]),
    );
  }
}
