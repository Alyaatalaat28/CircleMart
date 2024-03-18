import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref with ChangeNotifier {
  final int _currentQuentity = 1;
  final int _initialQuentity = 1;
  int _counter = 1;

  int get currentQuentity => _currentQuentity;
  int get initialQuentity => _initialQuentity;
  int get counter => _counter;

//cart
  List<Product> _cart = [];
  List<Product> get cart => _cart;

//load cart
  void loadCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? cartList = prefs.getStringList('cart');

    if (cartList != null) {
      _cart = cartList
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
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
  void addToCart(Product product, int currentQuentity) {
    int productExist =
        _cart.indexWhere((element) => element.name == product.name);
    if (productExist != -1) {
      _cart[productExist].quantity += currentQuentity;
    } else {
      product.quantity = currentQuentity;
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
  void removeFromCart(Product product) {
    _cart.remove(product);
    saveCart();
    notifyListeners();
  }

//increase quantity
  void increaseProductQuantity(Product product) {
    int productIndex = _cart.indexOf(product);
    if (productIndex != -1) {
      _cart[productIndex].quantity += 1;
      saveCart();
      notifyListeners();
    }
  }

//decrease quantity
  void decreaseProductQuantity(Product product) {
    int productIndex = _cart.indexOf(product);
    if (productIndex != -1 && _cart[productIndex].quantity > 1) {
      _cart[productIndex].quantity -= 1;
      saveCart();
      notifyListeners();
    }
  }

//total price for single product
  double totalPriceForSingleProduct(Product product) {
    return product.price * product.quantity;
  }

//total price for all cart products
  double totalPriceForCartProuducts() {
    double total = 0.0;
    for (Product product in _cart) {
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
