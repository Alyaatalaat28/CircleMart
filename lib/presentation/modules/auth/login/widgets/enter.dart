import 'package:flutter/material.dart';
import 'package:nami/presentation/component/custom_text_button.dart';
import 'package:nami/presentation/modules/auth/login/widgets/otp_bottom_sheet.dart';

class Enter extends StatefulWidget {
  const Enter({super.key});

  @override
  State<Enter> createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
                    width: double.infinity,
                    height: 53,
                    text: 'دخول',
                    radius: 12,
                    onPressed: ()=>showBottomSheet(),
                    );
  }
    void showBottomSheet(){
            showModalBottomSheet(
              context:context,
              builder:(context)=>  const OtpBottomSheet()
              );
  }
}