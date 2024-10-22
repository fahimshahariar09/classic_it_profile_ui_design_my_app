import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/new_password.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController controller = Get.put(NewPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              const Text(
                "Your new password must be different from previous used passwords.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 30),
              PasswordTextField(passwordController: controller.oldpassword),
              const SizedBox(height: 15),
              PasswordTextField(passwordController: controller.newpassword),
              const SizedBox(height: 15),
              PasswordTextField(passwordController: controller.samepassword),
            ],
          ),
        ),
      ),
    );
  }
}
