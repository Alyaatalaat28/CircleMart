import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key, required this.image, required this.text, this.onPressed});
  final String image;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            SvgPicture.asset(
              image,
            ),
            Gap(7.w),
            Text(
              text,
              style: AppStyles.regular14(context, AppColors.kBlack),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.kGray,
                size: 15.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
