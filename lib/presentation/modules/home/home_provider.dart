import 'package:flutter/foundation.dart';
import 'package:nami/core/api_checker.dart';
import 'package:nami/data/model/body/categoris/categoris.dart';
import 'package:nami/data/model/body/home_slider/home_slider.dart';
import 'package:nami/data/model/body/latest_products/latest_products.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/repository/home/home_repo.dart';

import '../../../core/utils/show_toast.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo homeRepo;

  HomeProvider({required this.homeRepo});

///variables
  HomeSlider? _homeSlider ;
  Categoris? _categoris ;
  LatestProducts? _latestProducts ;
  bool _isLoading = false;
  int _selectedIndex = -1;

 ///getter
  HomeSlider? get homeSlider => _homeSlider;
  Categoris? get categoris => _categoris;
  LatestProducts? get latestProducts => _latestProducts;
  bool get isLoading => _isLoading;
  int get selectedIndex => _selectedIndex;

//slider
  Future<ApiResponse> getHomeSliderImages() async {
    _isLoading = true;
    ApiResponse response = await homeRepo.getHomeSlider();
    _isLoading = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _homeSlider= HomeSlider.fromJson(response.response?.data);
      if (_homeSlider?.code != 200) {
        ToastUtils.showToast(_homeSlider?.message ?? "");   
      }
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    notifyListeners();
    return response;
    
  }

  //categoris
  Future<ApiResponse> getCategorisData() async {
    _isLoading = true;
    ApiResponse response = await homeRepo.getCategoris();
    _isLoading = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _categoris= Categoris.fromJson(response.response?.data);
      if (_categoris?.code != 200) {
        ToastUtils.showToast(_categoris?.message ?? "");   
      }
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    notifyListeners();
    return response;
   
  }

 //latest products
 Future<ApiResponse> getLatestProducts()async {
   _isLoading = true;
    ApiResponse response = await homeRepo.getLatestProducts();
    _isLoading = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _latestProducts= LatestProducts.fromMap(response.response?.data);
      if (_latestProducts?.code != 200) {
        ToastUtils.showToast(_latestProducts?.message ?? "");   
      }
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    notifyListeners();
    return response;
 }
   
 ///update index of categoris
  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

}
