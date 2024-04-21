import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/login_body.dart';
import 'package:nami/data/model/response/body/register_body.dart';
import 'package:nami/data/repository/auth/auth_repo.dart';

import '../../dataSource/remote/exception/api_error_handler.dart';

class AuthRepoImpl implements AuthRepo {
  final DioClient dioClient;
  AuthRepoImpl({required this.dioClient});
  @override
  Future<ApiResponse> login(Login loginBody) async {
    try {
      Response response = await dioClient.post(
        AppURL.kLoginURI,
        data: loginBody.toJson(),
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  @override
  Future<ApiResponse> register(RegisterRequestBody registerBody) async {
    try {
      FormData formData = FormData.fromMap({
        "first_name": registerBody.firstName,
        "last_name": registerBody.lastName,
        "phone_code": registerBody.phoneCode,
        "phone": registerBody.phone,
        "image": registerBody.image == null
            ? null
            : await MultipartFile.fromFile(registerBody.image!.path),
        "invitation_code": registerBody.invitationCode,
        "city_id": registerBody.cityId,
      });
      Response response = await dioClient.postWithImage(
        AppURL.kRegisterURI,
        data: formData,
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  @override
  Future<ApiResponse> getCity() async {
    try {
      Response response = await dioClient.get(AppURL.kGetCity);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
