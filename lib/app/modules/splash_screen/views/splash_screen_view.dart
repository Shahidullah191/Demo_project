import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/splash/up_shape.png',
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/splash/logo.png',
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/splash/down_shape.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
