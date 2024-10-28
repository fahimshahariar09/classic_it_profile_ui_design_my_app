import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/view/common_widget/common_text.dart';
import 'package:myapp/view/common_widget/custom_timer.dart';
import 'package:myapp/view/screen/auth/widget/otp_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              CommonText(titel: "OTP VERIFICATION ".tr),
              SizedBox(height: 10),
              CommonText(
                titel: "Please enter the verification code sent to :",
                fColor: Colors.grey,
              ),
              CommonText(titel: "fahim@gmail.com"),
              SizedBox(
                height: 30,
              ),
              SizedBox(height: 25),
              Row(
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
              SizedBox(height: 15),
              CustomTimer(),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    titel: "Don't receive code? ",
                    fColor: Colors.grey,
                  ),
                  CommonText(
                    titel: "Re-send",fColor: Colors.black,
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
