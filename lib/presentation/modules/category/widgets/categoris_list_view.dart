import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/category/widgets/category.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index)=> Category(index:index),
      itemCount: 10,
      );
  }
}