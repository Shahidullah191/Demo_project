import 'package:get/get.dart';

import 'package:demo_project/app/modules/home/bindings/home_binding.dart';
import 'package:demo_project/app/modules/home/views/home_view.dart';
import 'package:demo_project/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:demo_project/app/modules/login_page/views/login_page_view.dart';
import 'package:demo_project/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:demo_project/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
  ];
}
