import 'package:dio/dio.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/dataSource/remote/exception/api_error_handler.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/repository/contact_us/contact_us_repo.dart';

class ContactUsRepoInpl implements ContactUsRepo {
  final DioClient dioClient;
  ContactUsRepoInpl({required this.dioClient});

  @override
  Future<ApiResponse> contactUs(contactUs) async {
    try {
      Response response = await dioClient.post(
        AppURL.contactUs,
        data: contactUs.toMap(),
      );
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
