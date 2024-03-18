import 'package:flutter/widgets.dart';
import 'package:nami/presentation/modules/category/widgets/empty_category.dart';
import 'package:provider/provider.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'categoris_list_item.dart';

class CategorisList extends StatelessWidget {
  const CategorisList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder:(context,provider,child){
        if (provider.selectedIndex >= 0 && provider.selectedIndex < provider.categoris.length) {
          final categoris = provider.categoris[provider.selectedIndex];
          final subCategories = categoris.subCategories;
          return Column(
            children: subCategories!.map((subCategory) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategorisListItem(
                  subCategory: subCategory.title!,
                ),
              );
            }).toList(),
          );
        } else {
          return  const Expanded(
            child: EmptyCategory()
          ); 
        }
      }
    );
  }
}
