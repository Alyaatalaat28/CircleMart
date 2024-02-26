import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'edit_avarar.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:double.infinity,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children:[
          const EditAvatar(),
          const Gap(12),
          Text('محمد العشري',
          style:AppStyles.semiBold18(context))
        ]
      ),
    );
  }
}