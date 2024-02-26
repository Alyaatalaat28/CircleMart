
import 'package:flutter/material.dart';

class OrdersViewModel with ChangeNotifier{

bool showCurrentOrders=true;

void toggleOrdersView(){
  showCurrentOrders=!showCurrentOrders;
  notifyListeners();
}
 
}