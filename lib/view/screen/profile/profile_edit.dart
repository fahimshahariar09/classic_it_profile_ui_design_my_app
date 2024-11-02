import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/view/screen/profile/widget/common_field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Edit"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          CommonField(
            controller: controller.fastnameController,
          ),
          const SizedBox(height: 10),
          CommonField(controller: controller.lastController),
          const SizedBox(height: 10),
          CommonField(controller: controller.phoneController),
          const SizedBox(height: 10),
          CommonField(controller: controller.phoneController),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
