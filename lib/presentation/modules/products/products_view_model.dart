
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nami/core/cache_helper.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';

class ProductsViewModel with ChangeNotifier{

 int _sectionSelectedIndex=-1;
 int _branchSelectedIndex=-1;
 final int _currentQuentity=1;
final int _initialQuentity=1;
 int _counter=1;
 bool _isChecked=true;

int get sectionSelectedIndex=>_sectionSelectedIndex;
int get branchSelectedIndex=>_branchSelectedIndex;
int get  currentQuentity=> _currentQuentity;
int get  initialQuentity=> _initialQuentity;
int get  counter=> _counter;
bool get  isChecked=> _isChecked;


void updateSectionSelectedIndex(int index){
     _sectionSelectedIndex=index;
     notifyListeners();
}
void updateBranchSelectedIndex(int index){
     _branchSelectedIndex=index;
     notifyListeners();
}


//counter
void resetCounter(){
  _counter=_initialQuentity;
  notifyListeners();
}

void increaseQuantity(){
  _counter++;
  notifyListeners();
}
void decreaseQuantity(){
   if(_counter>1){
   _counter--;
  notifyListeners();
   }
}

void checked(bool value){
  _isChecked=value;
  notifyListeners();
}

//cart
 final List<Product> _cart=[];
 List<Product> get cart=> _cart;

 
//total price for single product
double totalPriceForSingleProduct(Product product){
  return product.price*product.quantity;
}

//total price for all cart products
double totalPriceForCartProuducts(){
  double total=0.0;
  for(Product product in _cart){
    total+=totalPriceForSingleProduct(product);
  }
  return total;
}

//discount use points
double discount(int points){
   double discountAmount=points/10;
   return totalPriceForCartProuducts()-discountAmount;
}

//save cart 
void saveCart(){
List<String> cart=_cart.map((e) =>jsonEncode(e)).toList();
CacheHelper.saveData(key:'cart', value:cart );
}

//add to cart
void addToCart(Product product,int currentQuentity){
  int productExist=_cart.indexWhere((element) => element.name==product.name);
  if(productExist!=-1){
    _cart[productExist].quantity+=currentQuentity;
  }else{
    product.quantity=currentQuentity;
    _cart.add(product);
  }
 saveCart();
 notifyListeners();
}

//remove from cart
void removeFromCart(Product product){
  _cart.remove(product);
  saveCart();
 notifyListeners();
}

//increase quantity
void increaseProductQuantity(Product product){
 int productIndex=_cart.indexOf(product);
 if(productIndex!=-1){
  _cart[productIndex].quantity+=1;
  saveCart();
 notifyListeners();
 }
}

//decrease quantity
void decreaseProductQuantity(Product product){
 int productIndex=_cart.indexOf(product);
 if(productIndex!=-1&&_cart[productIndex].quantity>1){
        _cart[productIndex].quantity-=1;
       saveCart();
      notifyListeners();
 }
}

//get cart data
void getCart(){
  CacheHelper.getData(key:'cart');
  notifyListeners();
}

// clear cart 
void clearCart(){
  CacheHelper.removeData(key:'cart');
  _cart.clear();
  notifyListeners();
}


}