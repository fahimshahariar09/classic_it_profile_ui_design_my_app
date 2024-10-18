import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/sign_up.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';
import 'package:myapp/view/screen/auth/widget/name_text_feild.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          NameTextFeild(nameController: signUpController.nameController),
          SizedBox(height: 15),
          EmailTextField(emailController: signUpController.emailController),
          SizedBox(height: 15),
          PasswordTextField(passwordController: signUpController.passwordController),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
