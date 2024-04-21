import 'package:flutter/widgets.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class CategorisListItem extends StatelessWidget {
  const CategorisListItem({super.key, required this.subCategory});
  final String subCategory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 220.w,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.kLightGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                subCategory,
                textAlign: TextAlign.end,
                style: AppStyles.regular12(context, AppColors.kBlack),
              ),
            )),
      ),
    );
  }
}
