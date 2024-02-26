import 'package:flutter/widgets.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'categoris_list_view.dart';

class Categoris extends StatelessWidget {
  const Categoris({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:85.w,
      height:MediaQuery.sizeOf(context).height,
      child: Container(
        decoration:ShapeDecoration(
          color:AppColors.kLightGray,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child:const CategoriesListView(),
      ),
    );
  }
}