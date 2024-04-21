import 'package:flutter/material.dart';
import 'package:nami/core/api_checker.dart';
import 'package:nami/data/model/body/categoris/categoris.dart';
import 'package:nami/data/model/body/home_slider/home_slider.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/data/model/body/latest_products/latest_products.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/repository/home/home_repo.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo homeRepo;

  HomeProvider({required this.homeRepo});

  ///variables
  HomeSlider? _homeSlider;
  Categoris? _categoris;
  LatestProducts? _latestProducts;
  LatestProducts? _products;
  LatestProducts? _favoriteModel;
  List<Datam>? _favoriteList = [];
  LatestProducts? _favoriteItem;
  bool _isLoading = false;
  bool _isLoadingFavorite = false;
  bool _isLoadingGetFavorite = false;
  bool _isLoadingProducts = false;
  int _selectedIndex = -1;
  int _categorisSelectedIndex = -1;
  int _subCategorisSelectedIndex = -1;

  ///getter
  HomeSlider? get homeSlider => _homeSlider;
  Categoris? get categoris => _categoris;
  LatestProducts? get latestProducts => _latestProducts;
  LatestProducts? get products => _products;
  LatestProducts? get favoriteItem => _favoriteItem;
  List<Datam>? get favoriteList => _favoriteList;
  LatestProducts? get favoriteModel => _favoriteModel;
  bool get isLoading => _isLoading;
  bool get isLoadingProducts => _isLoadingProducts;
  bool get isLoadingFavorite => _isLoadingFavorite;
  bool get isLoadingGetFavorite => _isLoadingGetFavorite;
  int get selectedIndex => _selectedIndex;
  int get categorisSelectedIndex => _categorisSelectedIndex;
  int get subCategorisSelectedIndex => _subCategorisSelectedIndex;

  ///controllers
  final TextEditingController searchProductsController =
      TextEditingController();

//slider
  Future<ApiResponse> getHomeSliderImages() async {
    _isLoading = true;
    ApiResponse response = await homeRepo.getHomeSlider();
    _isLoading = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _homeSlider = HomeSlider.fromJson(response.response?.data);
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
      _categoris = Categoris.fromJson(response.response?.data);
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    notifyListeners();
    return response;
  }

  //latest products
  Future<ApiResponse> getLatestProducts() async {
    _isLoading = true;
    ApiResponse response = await homeRepo.getLatestProducts();
    _isLoading = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _latestProducts = LatestProducts.fromMap(response.response?.data);
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    notifyListeners();
    return response;
  }

  ///products
  Future<ApiResponse> getProducts({ProductQueryParameters? queryParams}) async {
    _isLoadingProducts = true;
    ApiResponse response = await homeRepo.getProducts(queryParams: queryParams);
    _isLoadingProducts = false;
    if (response.response != null && response.response?.statusCode == 200) {
      _products = LatestProducts.fromMap(response.response?.data);
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoadingProducts = false;
    notifyListeners();
    return response;
  }

////favorite
  Future<ApiResponse> addOrRemoveFavorite(int productID) async {
    _isLoadingFavorite = true;
    notifyListeners();
    ApiResponse response = await homeRepo.addOrRemoveFavorites(productID);
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingFavorite = false;
      _favoriteModel = LatestProducts.fromMap(response.response?.data);
      getFavorite();
    } else {
      _isLoadingFavorite = false;
      notifyListeners();
    }
    _isLoadingFavorite = false;
    notifyListeners();
    return response;
  }

  Future<ApiResponse> getFavorite() async {
    _favoriteList?.clear();
    _isLoadingGetFavorite = true;
    notifyListeners();
    ApiResponse response = await homeRepo.getFavorites();
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingGetFavorite = false;
      _favoriteItem = LatestProducts.fromMap(response.response?.data);
      if (_favoriteItem!.code == 200) {
        _favoriteList?.addAll(_favoriteItem!.data!);
      }
    } else {
      _isLoadingGetFavorite = false;
      notifyListeners();
    }
    _isLoadingGetFavorite = false;
    notifyListeners();
    return response;
  }

  void updateFavoriteStatus(int productId) {
    Datam product = _favoriteList!.firstWhere((p) => p.id == productId,
        orElse: () => Datam(id: productId));
    if (_favoriteList!.contains(product)) {
      _favoriteList!.remove(product);
    } else {
      _favoriteList!.add(product);
    }
    notifyListeners();
  }

  ///update index of categoris
  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void updateCategorisSelectedIndex(int index) {
    _categorisSelectedIndex = index;
    _subCategorisSelectedIndex = -1;
    notifyListeners();
  }

  void updateSubCategorisSelectedIndex(int index) {
    _subCategorisSelectedIndex = index;
    notifyListeners();
  }
}
