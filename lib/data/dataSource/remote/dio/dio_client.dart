import 'dart:io';

import 'package:dio/dio.dart';

class DioClient {
  final String baseUrl;
  final Dio dio;
  DioClient(this.baseUrl, this.dio);

  //get
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.get(
        '$baseUrl$uri',
        queryParameters: queryParameters,
      );
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}
