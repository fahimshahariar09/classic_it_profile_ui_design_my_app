import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/new_password.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController controller =Get.put(NewPasswordController());
    return Scaffold(
      body: Column(
        children: [
          PasswordTextField(passwordController: controller.oldpassword),
        ],
      ),
    );
  }
}
