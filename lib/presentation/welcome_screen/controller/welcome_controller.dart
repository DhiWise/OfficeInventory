import '/core/app_export.dart';
import 'package:officeinventoryapp/presentation/welcome_screen/models/welcome_model.dart';
import 'package:flutter/material.dart';

class WelcomeController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onReady() {
    super.onReady();
    emailController.text = "admin@dhiwise.com";
    passwordController.text = "admin";
    if(Get.find<PrefUtils>().getEmail().isNotEmpty && Get.find<PrefUtils>().getPassword().isNotEmpty ){
      Get.offNamed(AppRoutes.categoryScreen);
    }

  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
