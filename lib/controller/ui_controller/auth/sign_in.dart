import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/sign_in.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = true.obs;

  signinFun() async {
    bool status = await SignInService.signinService(
        email: emailController.text, password: passwordController.text);
  }
}
