import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/category/widgets/category.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder:(context,provider,child)=> ListView.builder(
        itemBuilder: (BuildContext context, int index) => Category(
          index: index,
          title:provider.categoris[index].title!,
          image:provider.categoris[index].image!,
          ),
        itemCount: provider.categoris.length,
      ),
    );
  }
}
