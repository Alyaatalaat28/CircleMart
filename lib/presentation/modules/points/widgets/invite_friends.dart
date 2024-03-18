import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/points/widgets/invite_friends_list_view.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      padding: const EdgeInsets.all(16.0),
      color: AppColors.kGray,
      borderType: BorderType.Rect,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'السجل',
            style:
                AppStyles.semiBold12(context).copyWith(color: AppColors.kGray),
          ),
          const InviteFriendsListView(),
        ],
      ),
    );
  }
}
