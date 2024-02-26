import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
              children: [
             Text('حذف الحساب',
              style: AppStyles.regular14(context, AppColors.kRed),),
              const Gap(7),
              SvgPicture.asset(Assets.deleteApp),
              const Gap(6),
              ],
             );
  }
}