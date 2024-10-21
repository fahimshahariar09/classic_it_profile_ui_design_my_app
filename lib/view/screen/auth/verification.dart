import 'package:flutter/material.dart';
import 'package:myapp/view/screen/auth/widget/otp_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            Image.asset("asset/images/otp.png"),
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
            )
          ],
        ),
      ),
    );
  }
}
