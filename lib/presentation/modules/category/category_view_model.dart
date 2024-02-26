
import 'package:flutter/material.dart';

class CategoryViewModel with ChangeNotifier{

 int _selectedIndex=-1;

int get selectedIndex=>_selectedIndex;

void updateSelectedIndex(int index){
     _selectedIndex=index;
     notifyListeners();
}
 
}