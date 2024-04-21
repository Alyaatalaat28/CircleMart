import 'dart:convert';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/core/utils/app_constants.dart';
import 'package:nami/data/dataSource/remote/dio/dio_client.dart';
import 'package:nami/data/model/response/login_model.dart';
import 'package:nami/presentation/modules/splash/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveUserData {
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  SaveUserData({required this.sharedPreferences, required this.dioClient});

  /// save SharedData

  Future<void> saveUserData(LoginBody loginBody) async {
    String userSavedData = json.encode(loginBody.data!.user);
    try {
      await sharedPreferences.setString(AppConstants.userData, userSavedData);
    } catch (e) {
      rethrow;
    }
    dioClient.updateHeader(token: loginBody.data?.auth?.token, lang: getLang());
  }

  Future<void> saveLang(String lang) async {
    try {
      await sharedPreferences.setString(AppConstants.lang, lang);
    } catch (e) {
      rethrow;
    }
    dioClient.updateHeader(lang: lang, token: getUserToken());
  }

  Future<void> saveUserToken(String userTOKEN) async {
    dioClient.updateHeader(token: userTOKEN, lang: getLang());
    try {
      await sharedPreferences.setString(AppConstants.userTOKEN, userTOKEN);
    } catch (e) {
      rethrow;
    }
  }

  ///get SharedData
  UserData? getUserData() {
    String? userSavedData = sharedPreferences.getString(AppConstants.userData);
    if (userSavedData != null) {
      Map<String, dynamic> userData = json.decode(userSavedData);
      UserData userModel = UserData.fromJson(userData);
      return userModel;
    }
    return null;
  }

  String getUserToken() {
    return sharedPreferences.getString(AppConstants.userTOKEN) ?? "";
  }

  String getLang() {
    return sharedPreferences.getString(AppConstants.lang) ?? "ar";
  }

  ///clear SharedData
  Future<bool> clearSharedData() async {
    await sharedPreferences.remove(AppConstants.userData);
    await sharedPreferences.remove(AppConstants.userTOKEN);
    pushAndRemoveUntil(const SplashView());

    return true;
  }
}
