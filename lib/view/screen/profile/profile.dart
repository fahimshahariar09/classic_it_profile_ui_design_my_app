import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/view/common_widget/custom_button.dart';

class Profile extends StatelessWidget {
   Profile({super.key});

  final TextEditingController fastController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assetName"),
          ),
          const SizedBox(height: 10),
          CustomButton(text: "Save", onTap: () {}),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("first name : "),
              Text("last name"),
            ],
          ),
          const SizedBox(height: 10),
          const Text("phone"),
          const SizedBox(height: 10),
          const Text("email"),
        ],
      ),
    );
  }
}
