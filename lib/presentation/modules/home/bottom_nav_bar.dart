// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/home/home_view_model.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<HomeViewModel>(
      builder:(context,provider,_)=> Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
           items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.settingGray,
                color: provider.currentIndex==0? AppColors.kRed:AppColors.kGray,
                ),
                label: '',
              ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.mapGray,
                color: provider.currentIndex==1? AppColors.kRed:AppColors.kGray),
              label: ''
              ),
            BottomNavigationBarItem(
              icon:SvgPicture.asset(
              Assets.categoryGray,
               color: provider.currentIndex==2? AppColors.kRed:AppColors.kGray,),
              label: ''
              ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
              Assets.homeGray,
              color:provider.currentIndex==3? AppColors.kRed:AppColors.kGray),
              label: ''
             ),
           ],
           currentIndex: provider.currentIndex,
           onTap: (index){
            provider.onItemTapped(index);
           },
      ),
      body: provider.views[provider.currentIndex],
          ),
    );
  }
}