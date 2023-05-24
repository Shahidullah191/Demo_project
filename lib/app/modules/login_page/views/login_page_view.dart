import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/utils.dart';
import '../controllers/login_page_controller.dart';
import '../widgets/custom_textfield.dart';

class LoginPageView extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPageView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(
              controller: controller.emailController.value,
              focusNode: controller.emailFocusNode.value,
              nextFocusNode: controller.passwordFocusNode.value,
              title: 'Email',
              message: 'Please enter your email',
              hintText: 'Enter your email',
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: controller.passwordController.value,
              focusNode: controller.passwordFocusNode.value,
              title: 'Password',
              message: 'Please enter your password',
              hintText: 'Enter your password',
            ),
          ],
        ),
      ),
    );
  }
}
