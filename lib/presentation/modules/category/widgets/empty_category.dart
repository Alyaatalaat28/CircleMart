import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class EmptyCategory extends StatelessWidget {
  const EmptyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical:200.0),
              child: Column(
                children: [
                  SvgPicture.asset(Assets.emptyCat,
                  width:70),
                  Gap(10.h),
              Text( 'قم باختيار القسم لعرض المنتجات',
              style: AppStyles. regular12(context, AppColors.kGray),
                        )
                ],
              ),
            );
  }
}