import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/repository/home/home_repo.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';

class HomeRepoImpl implements HomeRepo {
  final DioClient dioClient;
  HomeRepoImpl({required this.dioClient});

  //fetch home slider data
  @override
  Future<ApiResponse> getHomeSlider() async {
    try {
      Response response = await dioClient.get(AppURL.kSliderURI);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      print('error fetching $e');
      return ApiResponse.withError(e);
    }
  }

  //fetch categoris
  @override
  Future<ApiResponse> getCategoris() async {
    try {
      Response response = await dioClient.get(AppURL.kCategorisURI);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(e);
    }
  }

  //fetch latest product
  @override
  Future<ApiResponse> getLatestProducts() async {
    try {
      Response response = await dioClient.get(
        AppURL.kLatestProductsURI,
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(e);
    }
  }

  //fetch products
  @override
  Future<ApiResponse> getProducts({ProductQueryParameters? queryParams}) async {
    try {
      Response response = await dioClient.get(
        AppURL.kProductsURI,
        queryParameters: queryParams?.toMap(),
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      print('error fetching $e');
      return ApiResponse.withError(e);
    }
  }

////favorite
  @override
  Future<ApiResponse> addOrRemoveFavorites(int productID) async {
    try {
      Response response = await dioClient.post(
        AppURL.kAddAndRemoveFavorites,
        queryParameters: {'product_id': productID},
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      print('error add or remove favorite $e');
      return ApiResponse.withError(e);
    }
  }

  @override
  Future<ApiResponse> getFavorites() async {
    try {
      Response response = await dioClient.get(
        AppURL.kFavoriteItem,
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      print('error get favorite $e');
      return ApiResponse.withError(e);
    }
  }
}
