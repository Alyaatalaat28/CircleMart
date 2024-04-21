import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) =>
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
            provider.saveUserData.getUserToken() != ''
                ? 'تسجيل الخروج'
                : 'تسجيل الدخول',
            style: AppStyles.regular14(
                context, AppColors.kLogOutButtonBorderColor)),
        const Gap(12),
        SvgPicture.asset(Assets.logOut),
      ]),
    );
  }
}
