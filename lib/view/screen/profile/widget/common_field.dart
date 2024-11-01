import 'package:flutter/material.dart';

class CommonField extends StatelessWidget {
  const CommonField({super.key, this.hText});


  final String? hText;
  final TextEditingController controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hText,
      ),
    );
  }
}