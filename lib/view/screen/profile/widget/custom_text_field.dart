import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.controller, this.textInputType});

  final TextEditingController controller;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(),
      ),
    );
  }
}
