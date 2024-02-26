import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_styles.dart';

class ProductBranchItem extends StatelessWidget {
  const ProductBranchItem({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsViewModel>(
      builder: (BuildContext context,provider, child) {  
        return GestureDetector(
      onTap: (){
        provider.updateBranchSelectedIndex(index);
      },
      child: Container(
        height:50.h,
        width:116.w,
         decoration: ShapeDecoration(
                color:provider.branchSelectedIndex==index?AppColors.kRed:AppColors.kLightGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Center(
                   child: Text('مأكولات بحرية',
                   style:AppStyles.regular12(context,
                    provider.branchSelectedIndex==index?AppColors.kWhite:AppColors.kBlack),),
              ),
      ),
    );}
    );
  }
}