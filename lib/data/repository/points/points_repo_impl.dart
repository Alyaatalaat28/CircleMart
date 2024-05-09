import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/dataSource/remote/exception/api_error_handler.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/repository/points/points_repo.dart';

class PointsRepoImpl implements PointsRepo{
 final DioClient dioClient;

  PointsRepoImpl({required this.dioClient});
   @override
  Future<ApiResponse> getPoints()async{
    try {
      Response response = await dioClient.get(AppURL.points);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}