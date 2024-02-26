import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'categories.dart';
import 'categoris_list.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Text('الاقسام',
                style:AppStyles.semiBold18(context)),
            const Gap(16),
            const Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategorisList(),
                Gap(12),
                Categoris(),
              ],
            ),
          ]
        ),
      ),
    );
  }
}