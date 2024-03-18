import 'package:flutter/material.dart';

class OrdersViewModel with ChangeNotifier {
  bool showCurrentOrders = true;

  double _activeStep = 1;
  double get activeStep => _activeStep;

  void toggleOrdersView() {
    showCurrentOrders = !showCurrentOrders;
    notifyListeners();
  }

  void sliderIncrement() {
    _activeStep++;
    if (_activeStep > 6) {
      _activeStep = 6;
    }
    notifyListeners();
  }
}
