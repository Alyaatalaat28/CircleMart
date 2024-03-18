import 'package:flutter/foundation.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/data/model/body/home_slider/slider.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:nami/data/repository/home/home_repo.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo homeRepo;

  HomeProvider({required this.homeRepo});

  List<Slider> _homeSlider = [];
  List<Datum> _categoris = [];
  List<Datam> _latestProducts = [];

  int _selectedIndex = -1;

  List<Slider> get homeSlider => _homeSlider;
  List<Datum> get categoris => _categoris;
  List<Datam> get latestProducts => _latestProducts;

  int get selectedIndex => _selectedIndex;

//slider
  Future<void> getHomeSliderImages() async {
    var result = await homeRepo.getHomeSlider();
    result.fold((failure) {
      if (kDebugMode) {
        print('Error fetching home:${failure.errMessage}');
      }
      notifyListeners();
    }, (slider) {
      _homeSlider = slider;
      notifyListeners();
    });
  }

  //categoris
  Future<void> getCategorisData() async {
    var result = await homeRepo.getCategoris();
    result.fold((failure) {
      if (kDebugMode) {
        print('Error fetching categoris:${failure.errMessage}');
      }
      notifyListeners();
    }, (categoris) {
      _categoris = categoris;
      notifyListeners();
    });
  }

 //latest products
 Future<void> getLatestProducts()async {
    var result = await homeRepo.getLatestProducts();
    result.fold((failure) {
      if (kDebugMode) {
        print('Error fetching latest products:${failure.errMessage}');
      }
      notifyListeners();
    }, (latestProducts) {
      _latestProducts = latestProducts;
      print(_latestProducts);
      notifyListeners();
    });
  }
 

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

}
