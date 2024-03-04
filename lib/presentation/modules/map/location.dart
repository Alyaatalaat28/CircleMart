import 'package:flutter/material.dart';
import 'package:nami/presentation/component/products_app_bar.dart';

class LoationView extends StatelessWidget {
  const LoationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children:[
               ProductsAppBar(
                      text:'عنوان التوصيل'
                    ),
            ]
          ),
        ),
      ),
    );
  }
}