import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:gif/gif.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/points/points_provider.dart';
import 'package:provider/provider.dart';

class MyPoints extends StatefulWidget {
  const MyPoints({super.key});

  @override
  State<MyPoints> createState() => _MyPointsState();
}

class _MyPointsState extends State<MyPoints>
    with SingleTickerProviderStateMixin {
  late GifController controller;

  @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PointsProvider>(
      builder:(context,provider,child)=> Stack(
        alignment: AlignmentDirectional.center,
         children: [
        Gif(
          image: const AssetImage(Assets.g2),
          controller: controller,
          autostart: Autostart.loop,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text(
                tr(LocaleKeys.myPoints ),
                style: AppStyles.semiBold16(context)
                    .copyWith(color: AppColors.kGray),
              ),
              Gap(8.w),
              SvgPicture.asset(
                Assets.points,
                width: 32.w,
                height: 32.h,
              )
            ]),
            Gap(4.h),
            provider.isLoading?const CircularProgressIndicator(
              color:AppColors.kRed,
            ):
            Text('${provider.points!.data!.points}',
                style: AppStyles.semiBold18(context).copyWith(fontSize: 60.sp)),
          ],
        ),
      ]),
    );
  }
}
