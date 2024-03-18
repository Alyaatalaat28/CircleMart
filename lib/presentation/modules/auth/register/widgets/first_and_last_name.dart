import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/auth/register/widgets/name_field.dart';

class FirstAndLastName extends StatelessWidget {
  const FirstAndLastName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
        child: NameField(
          label: 'الاسم الاخير',
        ),
      ),
      Gap(8.w),
      const Expanded(
        child: NameField(
          label: 'الاسم الاول',
        ),
      ),
    ]);
  }
}
