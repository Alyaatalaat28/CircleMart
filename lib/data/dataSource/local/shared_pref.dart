import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref with ChangeNotifier {
  final double _currentQuentity = 1;
  final double _initialQuentity = 1;
  double _counter = 1;

  double get currentQuentity => _currentQuentity;
  double get initialQuentity => _initialQuentity;
  double get counter => _counter;

//cart
  List<Datam> _cart = [];
  List<Datam> get cart => _cart;

//load cart
  void loadCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? cartList = prefs.getStringList('cart');

    if (cartList != null) {
      _cart = cartList
          .map((e) => Datam.fromMap(e as Map<String, dynamic>))
          .toList();
      notifyListeners();
    }
  }

//save cart
  void saveCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cart = _cart.map((e) => jsonEncode(e)).toList();
    prefs.setStringList('cart', cart);
  }

//add to cart
  void addToCart(Datam product, double currentQuentity) {
    int productExist = _cart.indexWhere((element) => element.id == product.id);
    if (productExist != -1) {
      _cart[productExist].weightUnit =
          _cart[productExist].weightUnit! + currentQuentity;
    } else {
      product.weightUnit = currentQuentity;
      _cart.add(product);
    }
    saveCart();
    notifyListeners();
  }

// clear cart
  void clearCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('cart');
    _cart.clear();
    notifyListeners();
  }

//remove from cart
  void removeFromCart(Datam product) {
    _cart.remove(product);
    saveCart();
    notifyListeners();
  }

//increase quantity
  void increaseProductQuantity(Datam product) {
    int productIndex = _cart.indexOf(product);
    if (productIndex != -1) {
      _cart[productIndex].weightUnit = _cart[productIndex].weightUnit! + 1;
      saveCart();
      notifyListeners();
    }
  }

//decrease quantity
  void decreaseProductQuantity(Datam product) {
    int productIndex = _cart.indexOf(product);
    if (productIndex != -1 && _cart[productIndex].weightUnit! > 1) {
      _cart[productIndex].weightUnit = _cart[productIndex].weightUnit! - 1;
      saveCart();
      notifyListeners();
    }
  }

//total price for single product
  num totalPriceForSingleProduct(Datam product) {
    return product.price! * product.weightUnit!;
  }

//total price for all cart products
  num totalPriceForCartProuducts() {
    num total = 0.0;
    for (Datam product in _cart) {
      total += totalPriceForSingleProduct(product);
    }
    return total;
  }

//counter
  void resetCounter() {
    _counter = _initialQuentity;
    notifyListeners();
  }

  void increaseQuantity() {
    _counter++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_counter > 1) {
      _counter--;
      notifyListeners();
    }
  }
}
