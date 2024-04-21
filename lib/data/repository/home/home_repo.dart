import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';

abstract class HomeRepo {
  Future<ApiResponse> getHomeSlider();
  Future<ApiResponse> getCategoris();
  Future<ApiResponse> getLatestProducts();
  Future<ApiResponse> getProducts({ProductQueryParameters? queryParams});
  Future<ApiResponse> addOrRemoveFavorites(int productID);
  Future<ApiResponse> getFavorites();
}
