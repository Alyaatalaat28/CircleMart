import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

class ProductSectionsItem extends StatelessWidget {
  const ProductSectionsItem({super.key,required this.index});

final int index;
  @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder: (BuildContext context,provider, child) {  
      return GestureDetector(
        onTap: (){
          provider.updateSectionSelectedIndex(index);
        },
        child: Container(
          height:40.h,
          width:129.w,
           decoration: BoxDecoration(
                  border: Border.all(
                    color: provider.sectionSelectedIndex==index?AppColors.kRed:Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(provider.sectionSelectedIndex==index?8:0),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               Text('مأكولات طازجة ',
              style:AppStyles.regular12(context, AppColors.kBlack)
              ),
              Gap(4.w),
               Image(
                image:const AssetImage(Assets.productImage,),
                width:24.w,
                height:24.h,
                fit:BoxFit.fill,
                )
            ]
          ),
        ),
      );
      }
    );
  }
}