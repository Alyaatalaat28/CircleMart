

import 'package:nami/data/model/response/base/api_response.dart';

abstract class HomeRepo {
  Future<ApiResponse> getHomeSlider();
  Future<ApiResponse> getCategoris();
  Future<ApiResponse> getLatestProducts();

}
