import 'package:grsia/core/error/exceptions.dart';
import 'package:grsia/core/utils/Constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

abstract class GRSIALocalData {
  Future<String> getToken();
  Future<void> saveToken(String? token);
  Future<void> saveIsFirstLogin(bool isFirstLogin);
  Future<bool> getIsFirstLogin();
}

class GRSIALocalDataImpl implements GRSIALocalData {
  final SharedPreferences sharedPreferences;
  GRSIALocalDataImpl({required this.sharedPreferences});

  @override
  Future<void> saveIsFirstLogin(bool isFirstLogin) {
    return sharedPreferences.setBool(Constants.FIRST_LOGIN, isFirstLogin);
  }

  @override
  Future<bool> getIsFirstLogin() {
    final isFirstLogin = sharedPreferences.getBool(Constants.FIRST_LOGIN);
    if (isFirstLogin != null) {
      return Future.value(isFirstLogin);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<String> getToken() {
    final userToken = sharedPreferences.getString(Constants.USER_TOKEN);
    if (userToken != null) {
      return Future.value(userToken);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> saveToken(String? token) {
    if (token != null) {
      return sharedPreferences.setString(Constants.USER_TOKEN, token);
    } else {
      return Future.value(false);
    }
  }
}
