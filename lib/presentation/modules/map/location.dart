import 'package:flutter/material.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';

class LoationView extends StatelessWidget {
  const LoationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, actions: const [
          ProductsAppBar(text: 'عنوان التوصيل'),
        ]),
      ),
    );
  }
}
