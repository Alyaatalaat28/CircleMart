import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/custom_list_tile.dart';
import 'custom_container.dart';

class   Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 165,
      child: CustomOrderListTile(
        title: 'ملاحظات',
        textStyle:  AppStyles.regular12(context, AppColors.kGray),
        image: Assets.note,
        trailing: false,
      ),);
  }
}