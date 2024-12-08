import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';

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
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorStyle: TextStyle(fontSize: 12),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bg1LightColor)),
        ),
      ),
    );
  }
}
