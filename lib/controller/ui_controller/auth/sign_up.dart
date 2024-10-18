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
    bool status = await SignUpService.signupService();
    isLoading.value = false;

    if (status) {
      return;
    }
  }
}
