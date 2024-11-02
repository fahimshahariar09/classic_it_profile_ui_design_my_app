import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/view/common_widget/common_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
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
          CommonButton(buttonName: "Save", onTap: () {}),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("first name"),
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
