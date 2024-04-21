import 'package:flutter/material.dart';
import 'package:nami/data/model/response/body/login_body.dart';
import 'package:nami/presentation/component/buttons/custom_text_button.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/login/widgets/otp_bottom_sheet.dart';
import 'package:provider/provider.dart';

class Enter extends StatefulWidget {
  const Enter({super.key});

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) => CustomTextButton(
          width: double.infinity,
          height: 53,
          text: 'دخول',
          radius: 12,
          onPressed: () {
            if (provider.loginPhoneFormKey.currentState!.validate()) {
              if (provider.loginPhoneController.text.length == 11) {
                provider.login(Login(
                  provider.loginPhoneController.text.substring(1),
                ));
              } else {
                provider.login(Login(
                  provider.loginPhoneController.text,
                ));
              }
            }
          }),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => const OtpBottomSheet());
  }
}
