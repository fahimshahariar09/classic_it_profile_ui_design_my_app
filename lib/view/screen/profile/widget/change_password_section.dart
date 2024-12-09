import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/profile/widget/custom_text_field.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.vpn_key,
                    color: AppColors.bg1LightColor,
                  ),
                  SizedBox(width: 10),
                  CustomTextWidget(
                    text: "change password",
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColors.bg1LightColor,
                  )
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
