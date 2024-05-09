import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder:(context,provider,child)=> Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
                               InkWell(
                                  onTap: () {
                                    provider.getProfileImage();
                                  },
                              child: provider.saveUserData.getUserData()!.image == null?
                               SvgPicture.asset(Assets.register):
                               Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  width: 124.w,
                                  height: 124.h,
                                  child: Image.file(
                                    File(provider.saveUserData.getUserData()!.image!),
                                    fit: BoxFit.fill,
                                  ),
                                ),),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: SvgPicture.asset(Assets.add),
            )
          ],
        ),
      
    );
  }
}
