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
        title: Text("Profile Edit"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          CommonField(
            controller: controller.fastnameController,
          ),
          SizedBox(height: 10),
          CommonField(controller: controller.lastController),
          SizedBox(height: 10),
          CommonField(controller: controller.phoneController),
          SizedBox(height: 10),
          CommonField(controller: controller.phoneController),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
