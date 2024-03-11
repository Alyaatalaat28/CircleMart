// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

import 'item_details.dart';

class DetailsListView extends StatelessWidget {
  const DetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder:(context,provider,child)=> SizedBox(
         height: MediaQuery.of(context).size.height * 0.7,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index)=> Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0),
            child: ItemDetails(
              product:provider.cart[index],
            ),
          ),
          separatorBuilder: (BuildContext context, int index) { 
            return SvgPicture.asset(Assets.line,
            color:AppColors.kGray);
           },
          itemCount: provider.cart.length,),
      ),
    );
  }
}