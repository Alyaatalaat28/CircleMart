import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class ProductFavoriteAndDiscount extends StatelessWidget {
  const ProductFavoriteAndDiscount(
      {super.key, this.isChecked, this.onTap, required this.product});
  final bool? isChecked;
  final void Function()? onTap;
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => Row(children: [
        InkWell(
          onTap: onTap,
          child: SizedBox(
            width: 32.w,
            height: 32.h,
            child: CircleAvatar(
              backgroundColor: AppColors.kWhite,
              radius: 20.r,
              child: Icon(
                Icons.favorite_rounded,
                color: isChecked! ? AppColors.kRed : AppColors.kLightGray,
                size: 18,
              ),
            ),
          ),
        ),
        product.isOffer!
            ? Container(
                decoration: BoxDecoration(
                  color: AppColors.kRed,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  child: Text(
                    '${product.offerValue} %',
                    style: AppStyles.regular14(context, AppColors.kWhite),
                  ),
                ),
              )
            : const SizedBox(),
      ]),
    );
  }
}
