// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/utils/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.settingGray,
                color: currentIndex == 0
                    ? AppColors.kRed
                    : AppColors.kGray,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.mapGray,
                    color: currentIndex == 1
                        ? AppColors.kRed
                        : AppColors.kGray),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.categoryGray,
                  color: currentIndex == 2
                      ? AppColors.kRed
                      : AppColors.kGray,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.homeGray,
                    color: currentIndex == 3
                        ? AppColors.kRed
                        : AppColors.kGray),
                label: ''),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: screens[currentIndex],
      
    );
  }
}
