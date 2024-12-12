import 'package:flutter/material.dart';
import 'package:myapp/view/common_widget/custom_text.dart';

class SeletctImageDialogue extends StatelessWidget {
  const SeletctImageDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextWidget(
            text: "Select Image from",
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
