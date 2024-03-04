import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/points/widgets/invite_friends_item.dart';

class InviteFriendsListView extends StatelessWidget {
  const InviteFriendsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>const InviteFriendsItem(),
      itemCount: 6,

    );
  }
}