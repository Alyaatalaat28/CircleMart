
import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/category/category_view.dart';
import 'package:nami/presentation/modules/setting/setting_view.dart';
import '../map/map_view.dart';
import 'home_view.dart';

class HomeViewModel with ChangeNotifier{

  int selectedIndex=3;

  List<Widget> screens=const[
    SettingView(),
    MapView(),
    CategoryView(),
    HomeView(),
  ];

  int get currentIndex=>selectedIndex;

 List<Widget> get views=>screens;

 void onItemTapped(int index){
    selectedIndex=index;
    notifyListeners();
 }
}