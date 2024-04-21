// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:nami/data/model/response/base/error_response.dart';

class ApiErrorHandler {
  static dynamic getMessage(error) {
    dynamic errorDescription = "";
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              errorDescription = "Request to API server was cancelled";
              break;
            case DioErrorType.connectionTimeout:
              errorDescription = "Connection timeout with API server";
              break;
            case DioErrorType.unknown:
              errorDescription =
                  "Connection to API server failed due to internet connection";
              break;
            case DioErrorType.receiveTimeout:
              errorDescription =
                  "Receive timeout in connection with API server";
              break;
            case DioErrorType.sendTimeout:
              errorDescription = "Send timeout with server";
              break;
            default:
              if (error.response != null)
                switch (error.response?.statusCode) {
                  case 404:
                  case 500:
                  case 503:
                    errorDescription = "There is a problem with the server";
                    // errorDescription = error.response?.statusMessage;
                    break;
                  case 422:
                    Error401Response error422Response =
                        Error401Response.fromJson(error.response?.data);
                    if (error422Response.code != null &&
                        error422Response.code == 422) {
                      errorDescription = error422Response.message.toString();
                    } else {
                      errorDescription =
                          "Failed to handel error - status code: ${error.response?.statusCode}";
                    }

                  case 401:
                    Error401Response error401Response =
                        Error401Response.fromJson(error.response?.data);
                    if (error401Response.code != null &&
                        error401Response.code == 401) {
                      errorDescription = error401Response.message.toString();
                    } else {
                      errorDescription =
                          "Failed to handel error - status code: ${error.response?.statusCode}";
                    }

                    break;
                  default:
                    ErrorResponse errorResponse =
                        ErrorResponse.fromJson(error.response?.data);
                    if (errorResponse.errors != null &&
                        errorResponse.errors!.isNotEmpty) {
                      errorDescription = errorResponse;
                    } else {
                      errorDescription =
                          "Failed to load data - status code: ${error.response?.statusCode}";
                    }
                }
              break;
          }
        } else {
          errorDescription = "Unexpected error occured";
        }
      } on FormatException catch (e) {
        errorDescription = e.toString();
      }
    } else {
      errorDescription = "is not a subtype of exception";
    }
    return errorDescription;
  }
}
