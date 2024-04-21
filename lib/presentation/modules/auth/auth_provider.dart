import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/core/utils/show_toast.dart';
import 'package:nami/data/model/response/base/api_response.dart';
import 'package:nami/data/model/response/body/login_body.dart';
import 'package:nami/data/model/response/body/register_body.dart';
import 'package:nami/data/model/response/city_model.dart';
import 'package:nami/data/model/response/login_model.dart';
import 'package:nami/data/repository/auth/auth_repo.dart';
import 'package:nami/data/repository/auth/save_user_data.dart';
import 'package:nami/presentation/modules/auth/register/register_view.dart';
import 'package:nami/presentation/modules/home/bottom_nav_bar.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepo authRepo;
  final SaveUserData saveUserData;
  AuthProvider({required this.authRepo, required this.saveUserData});

  ///  TextEditingControllers
  TextEditingController loginPhoneController = TextEditingController();
  TextEditingController registerPhoneController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  ////form keys
  final loginPhoneFormKey = GlobalKey<FormState>();
  final registerPhoneFormKey = GlobalKey<FormState>();
  final firstNameFormKey = GlobalKey<FormState>();
  final lastNameFormKey = GlobalKey<FormState>();

  ///variables
  bool _isLoadingLogin = false;
  bool _isLoadingRegister = false;
  bool _isLoadingCity = false;
  LoginBody? _userModel;
  LoginBody? _registerBody;
  int? cityId;
  final List<CityModel> cities = [];
  GetCityModel? _cityModel;

  ///getters
  bool get isLoadingLogin => _isLoadingLogin;
  bool get isLoadingRegister => _isLoadingRegister;
  bool get isLoadingCity => _isLoadingCity;
  LoginBody? get userModel => _userModel;
  LoginBody? get registerBody => _registerBody;
  GetCityModel? get cityModel => _cityModel;

  ///login
  Future<ApiResponse> login(Login body) async {
    _isLoadingLogin = true;
    notifyListeners();
    ApiResponse response = await authRepo.login(body);
    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingLogin = false;
      print("Response data: ${response.response?.data}");
      _userModel = LoginBody.fromJson(response.response?.data);
      if (_userModel?.code == 200) {
        if (_userModel?.data?.user!.id != null) {
          saveUserData.saveUserData(_userModel!);
          saveUserData.saveUserToken(_userModel!.data?.auth?.token ?? '');
          loginPhoneController.clear();
          pushAndRemoveUntil(const BottomNavBar());
        }
      } else if (_userModel?.code == 422) {
        ToastUtils.showToast(response.response?.data['message']);
        registerPhoneController = loginPhoneController;
        push(const RegisterView());
      }
    } else {
      print("Response data: ${response.response?.data}");
      _isLoadingLogin = false;
      notifyListeners();
    }
    _isLoadingLogin = false;
    notifyListeners();
    return response;
  }

  /////register
  Future<ApiResponse> regiter(RegisterRequestBody body) async {
    _isLoadingRegister = true;
    notifyListeners();
    ApiResponse response = await authRepo.register(body);

    if (response.response != null && response.response?.statusCode == 200) {
      _isLoadingRegister = false;
      print("Response data: ${response.response?.data}");
      _registerBody = LoginBody.fromJson(response.response?.data);
      if (_registerBody != null && _registerBody?.code == 200) {
        saveUserData.saveUserData(_registerBody!);
        saveUserData.saveUserToken(_registerBody!.data?.auth?.token ?? '');
        firstNameController.clear();
        lastNameController.clear();
        registerPhoneController.clear();
        cityId = 0;
        pushAndRemoveUntil(const BottomNavBar());
      } else if (_registerBody?.code == 422) {
        ToastUtils.showToast(response.response?.data['message']);
      }
    } else {
      _isLoadingRegister = false;
      print("Error: Registration response data is null");
      print("Response data: ${response.response?.data}");
      ToastUtils.showToast(response.response?.data['message']);
      notifyListeners();
    }
    _isLoadingRegister = false;
    notifyListeners();
    return response;
  }

  ///city

  Future<ApiResponse> getCity() async {
    cities.clear();
    _isLoadingCity = true;
    notifyListeners();
    ApiResponse response = await authRepo.getCity();
    if (response.response != null && response.response!.statusCode == 200) {
      _cityModel = GetCityModel.fromJson(response.response!.data);
      if (_cityModel!.code == 200) {
        cities.addAll(_cityModel!.data!);
      } else if (_cityModel?.code == 422) {
        ToastUtils.showToast(_cityModel!.message!);
      }
    } else {
      _isLoadingCity = false;
      notifyListeners();
    }
    _isLoadingCity = false;
    notifyListeners();
    return response;
  }

////profile photo
  XFile? profileImage;
  final ImagePicker picker = ImagePicker();

  Future<void> getProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage = XFile(pickedFile.path);
      if (profileImage != null) {
        print('path${profileImage!.path}');
      } else {
        print('path is nulll');
      }
      notifyListeners();
    } else {
      notifyListeners();
      print('No image selected.');
    }
  }
}
