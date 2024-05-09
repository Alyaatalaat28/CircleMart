import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/auth/edit_profile/edit_profile.dart';
import 'package:provider/provider.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder:(context,provider,child)=> Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width:95.w ,
            height:95.h ,
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(16),
               image: DecorationImage(
                image:provider.saveUserData.getUserToken() != ''? CachedNetworkImageProvider(
                  provider.saveUserData.getUserData()!.image!):
                    const AssetImage(Assets.avatarImage) as ImageProvider
                   
                )
                )
            ),
          InkWell(
            onTap:(){
                push(const EditProfile());
            },
            child: Container(
              decoration: const ShapeDecoration(
                color: AppColors.kWhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              child: SvgPicture.asset(Assets.userPen),
            ),
          )
        ],
      ),
    );
  }
}
