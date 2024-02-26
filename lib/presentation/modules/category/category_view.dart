import 'package:flutter/material.dart';
import 'widgets/cactegory_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:Scaffold(
        body:CategoryViewBody(),
      )
    );
  }
}