import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.index,required this.image,required this.title});
  final int index;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
      return Consumer<HomeProvider>(
        builder:(context,provider,child)=> Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              provider.updateSelectedIndex(index);
            },
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: provider.selectedIndex == index
                        ? AppColors.kRed
                        : AppColors.kLightGray,
                  ),
                  borderRadius: BorderRadius.circular(
                      provider.selectedIndex == index ? 16 : 0),
                ),
                color: provider.selectedIndex == index
                    ? AppColors.kRed.withOpacity(0.1)
                    : null,
              ),
              child: Column(children: [
                  CachedNetworkImage(
                    imageUrl: image,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit:BoxFit.fill,
                  ),  
                const Gap(10),
                Text(title,
                    textAlign: TextAlign.center,
                    style: AppStyles.regular12(context, AppColors.kBlack))
              ]),
            ),
          ),
        ),
      );
    
  }
}
