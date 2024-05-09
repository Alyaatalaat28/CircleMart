import 'package:flutter/material.dart';
import 'package:nami/core/utils/show_toast.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/points.dart';
import 'package:nami/data/repository/points/points_repo.dart';

class PointsProvider with ChangeNotifier {
  final PointsRepo  pointsRepo;

  PointsProvider({required this.pointsRepo});
  
  ///variables
  bool _isLoading = false;
  Points? _points;

  ///getter
    bool get isLoading => _isLoading;
    Points? get points => _points;

   Future<ApiResponse> getPoints() async {
    _isLoading = true;
    notifyListeners();
    ApiResponse response = await pointsRepo.getPoints();
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoading = false;
      print("Response data: ${response.response?.data}");
      _points = Points.fromMap(response.response?.data);
    } else if (_points?.code == 422) {
      ToastUtils.showToast(response.response?.data['message']);
    } else {
      print("Response data: ${response.response?.data}");
      _isLoading = false;
      notifyListeners();
    }
    _isLoading = false;
    notifyListeners();
    return response;
  }

  }