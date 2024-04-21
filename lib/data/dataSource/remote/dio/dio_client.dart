import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nami/core/utils/app_constants.dart';
import 'package:nami/data/app_urls/app_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient {
  final String baseUrl = AppURL.kBaseURL;
  final Dio dio;
  late String token;
  late String lang;
  final SharedPreferences sharedPreferences;
  DioClient(this.dio, this.sharedPreferences) {
    token = sharedPreferences.getString(AppConstants.userTOKEN) ?? "";
    lang = sharedPreferences.getString(AppConstants.lang) ?? "ar";
    dio
      ..options.baseUrl = baseUrl
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': token,
        'lang': lang,
      };
  }

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

  ///post
  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postWithImage(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  void updateHeader({String? lang, String? token}) {
    token = token ?? this.token;
    this.token = token;
    dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'Accept-Language': '$lang',
    };
  }
}
