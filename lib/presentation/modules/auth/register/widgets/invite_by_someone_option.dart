import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class InviteBySomeOneOption extends StatefulWidget {
  const InviteBySomeOneOption({super.key});

  @override
  State<InviteBySomeOneOption> createState() => _InviteBySomeOneOptionState();
}

class _InviteBySomeOneOptionState extends State<InviteBySomeOneOption> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
          activeColor: AppColors.kRed,
          value: isChecked,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: AppColors.kGray)),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          }),
      Text(tr(LocaleKeys.youInvited ),
          style: AppStyles.regular14(context, AppColors.kBlack)),
      const Spacer(),
    ]);
  }
}
