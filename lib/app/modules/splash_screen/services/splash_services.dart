import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/user_preferences/user_preferences.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (kDebugMode) {
        print(value.isLogin);
      }
      if (kDebugMode) {
        print(value.token);
      }

      if (value.isLogin == false || value.isLogin == null) {
        Timer(const Duration(seconds: 3), () {
          Get.offAllNamed(Routes.LOGIN_PAGE);
        });
      } else {
        Timer(const Duration(seconds: 3), () {
          Get.offAllNamed(Routes.HOME);
        });
      }
    });
  }
}
