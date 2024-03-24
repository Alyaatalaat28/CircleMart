import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/category/widgets/category.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        if(provider.isLoading){
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.kRed,
            ),
          );
        }
        if(provider.categoris!=null) {
          return ListView.builder(
        itemBuilder: (BuildContext context, int index) => Category(
          index: index,
          title: provider.categoris!.data![index].title!,
          image: provider.categoris!.data![index].image!,
        ),
        itemCount: provider.categoris!.data!.length,
      );
        }else{
          return Container();
        }
      }
    );
  }
}
