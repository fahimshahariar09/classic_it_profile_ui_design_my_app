import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      color: AppColors.bg1LightColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
      child: SizedBox(
        height: 35,
        width: MediaQuery.sizeOf(context).width,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.white,
          color: AppColors.bg1LightColor,
        ),
      ),
    );
  }
}
