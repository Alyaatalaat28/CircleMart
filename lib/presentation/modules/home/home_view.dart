import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/home/widgets/custom_app_bar.dart';
import 'package:nami/presentation/modules/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            CustomAppBar(),
          ],
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
