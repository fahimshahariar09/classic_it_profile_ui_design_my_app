import 'package:flutter/material.dart';
import 'package:myapp/view/screen/auth/widget/otp_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              OtpField(),
              OtpField(),
              OtpField(),
              OtpField(),
            ],
          )
        ],
      ),
    );
  }
}
