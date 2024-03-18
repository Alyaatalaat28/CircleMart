import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('تسجيل الخروج',
          style:
              AppStyles.regular14(context, AppColors.kLogOutButtonBorderColor)),
      const Gap(12),
      SvgPicture.asset(Assets.logOut),
    ]);
  }
}
