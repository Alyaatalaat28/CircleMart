import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'widgets/cactegory_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('الاقسام', style: AppStyles.semiBold18(context)),
        ),
      ]),
      body: const CategoryViewBody(),
    ));
  }
}
