import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/modules/auth/login/widgets/code_timer.dart';
import 'package:nami/presentation/modules/auth/login/widgets/pin_fields.dart';
import 'package:nami/presentation/modules/auth/register/register_view.dart';
import '../../../../../core/routing/app_route.dart';

class OtpBottomSheet extends StatelessWidget {
  const OtpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.otp,
            ),
            Text('من فضلك ادخل رمز التحقق المرسل الي رقم الجوال \n 0123456789',
                textAlign: TextAlign.center,
                style: AppStyles.regular14(context, AppColors.kBlack)),
            Gap(16.h),
            const PinFields(),
            Gap(16.h),
            const CodeTimer(),
            Gap(20.h),
            CustomTextButton(
              width: double.infinity,
              height: 50,
              text: 'تأكيد',
              radius: 12,
              onPressed: () => pushAndRemoveUntil(const RegisterView()),
            )
          ],
        ),
      ),
    );
  }
}
