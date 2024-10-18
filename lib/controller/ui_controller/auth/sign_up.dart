import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/sign_up.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conpasswordController = TextEditingController();
  RxBool isLoading = true.obs;

  signupFun() async {
    isLoading.value = true;
    bool status = await SignUpService.signupService(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        conpassword: conpasswordController.text);
    isLoading.value = false;

    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    nameController.text="fahim";
    emailController.text="fahim@gmail.com";
    passwordController.text="1234567";
    conpasswordController.text="1234567";
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    conpasswordController.dispose();
    super.dispose();
  }

}
