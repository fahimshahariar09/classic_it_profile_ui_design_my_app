import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/forget_password.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetController = Get.put(ForgetPasswordController());
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 15),
          EmailTextField(emailController: forgetController.emailController),
        ],
      ),
    );
  }
}
