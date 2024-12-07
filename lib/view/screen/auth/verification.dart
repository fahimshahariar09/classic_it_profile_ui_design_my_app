import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/common_widget/custom_timer.dart';
import 'package:myapp/view/screen/auth/widget/otp_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextWidget(text: "OTP VERIFICATION ".tr),
              const SizedBox(height: 10),
              CustomTextWidget(
                text: "Please enter the verification code sent to :".tr,
                fontColor: Colors.grey,
              ),
              const CustomTextWidget(text: "fahim@gmail.com"),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OtpField(),
                  SizedBox(width: 20),
                  OtpField(),
                  SizedBox(width: 20),
                  OtpField(),
                  SizedBox(width: 20),
                  OtpField(),
                ],
              ),
              const SizedBox(height: 15),
              const CustomTimer(),
              const SizedBox(height: 15),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: "Don't receive code? ",
                    fontColor: Colors.grey,
                  ),
                  CustomTextWidget(
                    text: "Re-send",fontColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
