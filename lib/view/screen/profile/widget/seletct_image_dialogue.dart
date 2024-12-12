import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/custom_text.dart';

class SeletctImageDialogue extends StatelessWidget {
  const SeletctImageDialogue(
      {super.key, required this.cameraButton, required this.galleryButton});

  final VoidCallback cameraButton;
  final VoidCallback galleryButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomTextWidget(
            text: "Select Image from",
            fontSize: 20,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: cameraButton,
                child: const Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: AppColors.bg1LightColor,
                ),
              ),
              InkWell(
                onTap: galleryButton,
                child: const Icon(
                  Icons.photo,
                  size: 30,
                  color: AppColors.bg1LightColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
