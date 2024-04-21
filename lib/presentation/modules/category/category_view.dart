import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'widgets/cactegory_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(tr(LocaleKeys.sections),
              style: AppStyles.semiBold18(context)),
        ),
      ),
      body: const CategoryViewBody(),
    ));
  }
}
