import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 80,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
