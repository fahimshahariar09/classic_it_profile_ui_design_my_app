import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.textInputType,
      required this.labelText});

  final TextEditingController controller;
  final TextInputType? textInputType;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelText: labelText,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorStyle: const TextStyle(fontSize: 12),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bg1LightColor)),
        ),
        validator: (value) {
          if (value.toString() == "") {
            return "Field can't be empty";
          }
          return null;
        },
      ),
    );
  }
}
