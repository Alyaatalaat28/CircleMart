import 'package:flutter/foundation.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/data/model/body/home_slider/slider.dart';
import 'package:nami/data/repository/home/home_repo.dart';

class HomeProvider with ChangeNotifier {
 final HomeRepo homeRepo;

  HomeProvider({required this.homeRepo});

  List<Slider> _homeSlider=[];
  List<Datum> _categoris=[];
   int _selectedIndex = -1;

  List<Slider> get homeSlider=> _homeSlider;
  List<Datum> get categoris=> _categoris;
  int get selectedIndex => _selectedIndex;


//slider
  Future<void> getHomeSliderImages()async{
      var result= await  homeRepo.getHomeSlider();
    result.fold((failure){
      if (kDebugMode) {
        print('Error fetching home:${failure.errMessage}');
      }
      notifyListeners();
      },(slider){
        _homeSlider=slider;
        notifyListeners();
      }
      );
      
  }
  
  //categoris
  Future<void> getCategorisData()async{
      var result= await  homeRepo.getCategoris();
      result.fold((failure){
      if (kDebugMode) {
        print('Error fetching categoris:${failure.errMessage}');
      }
      notifyListeners();
      },(categoris){
        _categoris=categoris;
        notifyListeners();
      }
      );
      
  }
  
  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
