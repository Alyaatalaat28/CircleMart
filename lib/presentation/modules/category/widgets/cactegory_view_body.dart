import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'categories.dart';
import 'categoris_list.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Row(
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