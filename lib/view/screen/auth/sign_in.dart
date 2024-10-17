import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/sign_in.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              EmailTextField(),
              SizedBox(height: 15),
              PasswordTextField()
            ],
          ),
        ),
      ),
    );
  }
}
