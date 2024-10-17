import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/sign_in.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = true.obs;

  signinFun() async {
    isLoading.value = true;
    bool status = await SignInService.signinService(
        email: emailController.text, password: passwordController.text);
    isLoading.value = false;
    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    emailController.text = "fahim@gmail.com";
    passwordController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
