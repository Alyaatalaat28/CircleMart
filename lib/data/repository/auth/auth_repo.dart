import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/login_body.dart';
import 'package:nami/data/model/response/body/register_body.dart';

abstract class AuthRepo {
  Future<ApiResponse> login(Login loginBody);
  Future<ApiResponse> register(RegisterRequestBody registerBody);
  Future<ApiResponse> getCity();
}
