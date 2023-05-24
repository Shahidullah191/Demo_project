import 'package:get/get.dart';

import '../services/splash_services.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  SplashServices splashServices = SplashServices();

  @override
  void onInit() {
    splashServices.isLogin();

    super.onInit();
  }
}
