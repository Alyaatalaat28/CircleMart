import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import 'package:nami/core/utils/app_styles.dart';

class SearchTextFormField extends StatelessWidget {
   SearchTextFormField({super.key});
 final TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
                  child: TextFormField(
                    controller:searchController,
                    textAlign:TextAlign.end,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                        hintText:'منتج معين .. ؟',
                        hintStyle:AppStyles.regular12(context, kGray),
                        border: InputBorder.none,
                    )
                  ),
                );
  }
}