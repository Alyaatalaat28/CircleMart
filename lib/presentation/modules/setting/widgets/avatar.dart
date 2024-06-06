import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';
import 'edit_avarar.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder:(context,provider,child)=> SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
          const EditAvatar(),
          const Gap(12),
          Text(provider.saveUserData.getUserToken() != ''?
          '${provider.saveUserData.getUserData()!.firstName} ${provider.saveUserData.getUserData()!.lastName}':
          '', 
          style: AppStyles.semiBold18(context))
        ]),
      ),
    );
  }
}
