import 'package:flutter/material.dart';
import 'package:nami/core/utils/show_toast.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/contact_us.dart';
import 'package:nami/data/model/response/empty_model.dart';
import 'package:nami/data/repository/contact_us/contact_us_repo.dart';

class ContactUsProvider with ChangeNotifier {
  final ContactUsRepo contactUsRepo;
  ContactUsProvider({required this.contactUsRepo});

  ///  TextEditingControllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageTitleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  ////form keys
  final nameFormKey = GlobalKey<FormState>();
  final emailFormKey = GlobalKey<FormState>();
  final messageTitleFormKey = GlobalKey<FormState>();
  final messageBodyFormKey = GlobalKey<FormState>();

  ///variables
  EmptyModel? _contactUs;
  bool _isLoading = false;

////getter
  EmptyModel? get contactUs => _contactUs;
  bool get isLoading => _isLoading;

  Future<ApiResponse> contactUsMethod(ContactUs contactUs) async {
    _isLoading = true;
    notifyListeners();
    ApiResponse response = await contactUsRepo.contactUs(contactUs);
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoading = false;
      print("Response data: ${response.response?.data}");
      _contactUs=EmptyModel.fromMap(response.response?.data);
    } else if (_contactUs?.code == 422) {
      ToastUtils.showToast(response.response?.data['message']);
    } else {
      print("Response data: ${response.response?.data}");
      _isLoading = false;
      notifyListeners();
    }
    _isLoading = false;
    notifyListeners();
    return response;
  }

  void clearTextFields() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
    messageTitleController.clear();
  }
}
