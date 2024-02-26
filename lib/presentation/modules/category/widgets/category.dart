import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:provider/provider.dart';
import '../category_view_model.dart';

class Category extends StatelessWidget {
  const Category({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryViewModel>(
      builder: (BuildContext context,provider, child) {  
        return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
            provider.updateSelectedIndex(index);
        },
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: provider.selectedIndex==index?AppColors.kRed:AppColors.kLightGray,
              ),
              borderRadius: BorderRadius.circular(provider.selectedIndex==index?16:0),
            ),
          color:provider.selectedIndex==index?AppColors.kRed.withOpacity(0.1):null,
         
          ),
          child: Column(
            children:[
              const Image(
                      image:AssetImage((Assets.productImage)
                    )),
              const Gap(10),
              Text( 'مواد غذائية معبأة',
              textAlign:TextAlign.center,
              style:AppStyles.regular12(context, AppColors.kBlack))
            ]
          ),
        ),
      ),
    );}
    );
  }
}