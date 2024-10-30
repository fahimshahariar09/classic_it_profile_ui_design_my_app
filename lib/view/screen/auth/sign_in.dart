import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/sign_in.dart';
import 'package:myapp/view/common_widget/common_button.dart';
import 'package:myapp/view/common_widget/common_text.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';
import 'package:myapp/view/screen/auth/widget/password_text_field.dart';
import 'package:myapp/view/screen/profile/profile.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: signInController.formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                EmailTextField(
                  emailController: signInController.emailController,
                ),
                const SizedBox(height: 15),
                PasswordTextField(
                  passwordController: signInController.passwordController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child:  CommonText(titel: "Forget Password".tr)),
                  ],
                ),
                const SizedBox(height: 20),
                Obx(() => signInController.isLoading.isTrue
                    ? CommonButton(
                        buttonName: "Sign In".tr,
                        onTap: () {
                          if (!signInController.formKey.currentState!
                              .validate()) {
                            return;
                          }
                          signInController.signinFun();
                          Get.to(const Profile());
                        })
                    : const CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
