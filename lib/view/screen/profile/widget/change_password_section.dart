import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/common_funcation/common_snackbar_message.dart';
import 'package:myapp/utlis/common_funcation/internet_connection%20_check.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/custom_button.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/profile/widget/custom_text_field.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [
              const Row(
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
              const SizedBox(height: 10),
              CustomTextField(
                controller: profileController.oldPasswordController,
                labelText: "current_password",
              ),
              CustomTextField(
                controller: profileController.newPasswordController,
                labelText: "new_password",
              ),
              CustomTextField(
                controller: profileController.confPasswordController,
                labelText: "confram_password",
              ),
              const SizedBox(height: 10),
              CustomButton(
                  text: "edit",
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    if (!profileController.formKey.currentState!.validate()) {
                      return;
                    }
                    if (!await ConnectionChecker.connectionChecker()) {
                      CommonSnackbarMessage.noInternetConnection();
                      return;
                    }
                    bool status = await profileController.changePasswordFun();
                    if(status){
                      profileController.confPasswordController.clear();
                      profileController.newPasswordController.clear();
                      profileController.oldPasswordController.clear();
                      Get.back();
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
