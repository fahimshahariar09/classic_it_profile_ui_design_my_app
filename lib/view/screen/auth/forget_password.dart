import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/auth/forget_password.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/auth/widget/email_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetController =
        Get.put(ForgetPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Image.asset("asset/images/otp.png"),
              const SizedBox(height: 15),
              const SizedBox(height: 10),
              const Row(
                children: [
                  CustomTextWidget(
                    text: "Forget Password?",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ],
              ),
              const SizedBox(height: 10),
               const Text(
                  "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number."),
              const SizedBox(
                height: 20,
              ),
              EmailTextField(emailController: forgetController.emailController),
            ],
          ),
        ),
      ),
    );
  }
}
