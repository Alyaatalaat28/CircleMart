import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => Container(
        height: 165.h,
        width: double.infinity,
        alignment: AlignmentDirectional.topEnd,
        decoration: ShapeDecoration(
            color: AppColors.kWhite,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: AppColors.kLightGray,
                ),
                borderRadius: BorderRadius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(children: [
            SvgPicture.asset(Assets.note),
            Gap(16.w),
            Expanded(
              child: CustomTextField(
                controller: provider.noteController,
                label:tr(LocaleKeys.notes),
                keyboardType: TextInputType.text,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
