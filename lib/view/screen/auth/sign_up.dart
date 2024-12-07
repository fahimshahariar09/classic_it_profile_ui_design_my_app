import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/sign_up.dart';
import 'package:myapp/view/common_widget/custom_button.dart';
import 'package:myapp/view/screen/auth/sign_in.dart';
import 'package:myapp/view/screen/auth/widget/con_password_text_field.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';
import 'package:myapp/view/screen/auth/widget/name_text_feild.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      body: Form(
        key: signUpController.formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            NameTextFeild(nameController: signUpController.nameController),
            const SizedBox(height: 15),
            EmailTextField(emailController: signUpController.emailController),
            const SizedBox(height: 15),
            PasswordTextField(
                passwordController: signUpController.passwordController),
            const SizedBox(height: 15),
            ConPasswordTextField(
                conpasswordController: signUpController.conpasswordController),
            const SizedBox(height: 15),
            CustomButton(
                text: "Sign Up",
                onTap: () {
                  if (!signUpController.formKey.currentState!.validate()) {
                    return;
                  }
                  Get.to(const SignIn());
                  signUpController.signupFun();
                }),
          ],
        ),
      ),
    );
  }
}
