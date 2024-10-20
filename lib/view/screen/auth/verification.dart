import 'package:flutter/material.dart';
import 'package:myapp/view/screen/auth/widget/otp_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
