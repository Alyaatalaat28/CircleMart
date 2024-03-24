import 'package:nami/core/utils/show_toast.dart';
import '../data/model/response/base/api_response.dart';

class ApiChecker {
  static void checkApi(ApiResponse apiResponse) {
    if(apiResponse.response?.statusCode == 401) {
    // back to login and remove data
    }else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
        print(errorMessage);
      ToastUtils.showToast(errorMessage);
    }
  }
}