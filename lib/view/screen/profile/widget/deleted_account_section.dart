import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/common_funcation/common_snackbar_message.dart';
import 'package:myapp/utlis/common_funcation/internet_connection%20_check.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/custom_button.dart';
import 'package:myapp/view/common_widget/custom_loading.dart';
import 'package:myapp/view/screen/profile/widget/custom_text_field.dart';

class DeletedAccountSection extends StatelessWidget {
  const DeletedAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.account_circle,
                    color: AppColors.bg1LightColor,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: profileController.oldPasswordController,
                    labelText: "current_password",
                  ),
                  const SizedBox(height: 10),
                  Obx(() => profileController.isLoading.value
                      ? const CustomLoading()
                      : CustomButton(
                          text: "deleted",
                          buttonWidth: 150,
                          onTap: () async {
                            FocusScope.of(context).unfocus();
                            if (!profileController.formKey.currentState!
                                .validate()) {
                              return;
                            }
                            if (!await ConnectionChecker.connectionChecker()) {
                              CommonSnackbarMessage.noInternetConnection();
                              return;
                            }
                            bool status = await profileController
                                .accountDeletedFuncation();
                            if (status) {
                              profileController.oldPasswordController.clear();
                              Get.back();
                            }
                          }))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
