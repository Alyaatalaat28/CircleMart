import 'package:flutter/material.dart';

class ProductsViewModel with ChangeNotifier {
  int _sectionSelectedIndex = -1;
  int _branchSelectedIndex = -1;

  int get sectionSelectedIndex => _sectionSelectedIndex;
  int get branchSelectedIndex => _branchSelectedIndex;

  void updateSectionSelectedIndex(int index) {
    _sectionSelectedIndex = index;
    notifyListeners();
  }

  void updateBranchSelectedIndex(int index) {
    _branchSelectedIndex = index;
    notifyListeners();
  }
}
