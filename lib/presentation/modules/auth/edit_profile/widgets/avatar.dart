import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        const Image(
          image: AssetImage(Assets.avatarImage),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: SvgPicture.asset(Assets.add),
        )
      ],
    );
  }
}
