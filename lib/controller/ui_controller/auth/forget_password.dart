import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/forget_password.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  RxBool isLoading = true.obs;

  forgetFun() async {
    isLoading.value = true;
    bool status =
        await ForgetService.forgetService(email: emailController.text);
    isLoading.value = false;
    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    emailController.text = "fahim@gmail.com";
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
