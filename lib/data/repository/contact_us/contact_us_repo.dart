import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/contact_us.dart';

abstract class ContactUsRepo {
  Future<ApiResponse> contactUs(ContactUs contactUs);
}
