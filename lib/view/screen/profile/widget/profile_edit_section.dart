import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/common_funcation/common_snackbar_message.dart';
import 'package:myapp/utlis/common_funcation/internet_connection%20_check.dart';
import 'package:myapp/view/common_widget/custom_button.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/profile/widget/custom_text_field.dart';

class ProfileEditSection extends StatelessWidget {
  const ProfileEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, top: 10, left: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: "profile_edit",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    profileController.getImage(
                        imageSource: ImageSource.gallery);
                  },
                  child: Column(
                    children: [
                      Obx(() => CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey,
                            backgroundImage: profileController
                                        .profileIMG.value ==
                                    null
                                ? NetworkImage(
                                    "${profileController.userInfo["profile_image"] ?? ""}")
                                : FileImage(File(profileController
                                    .profileIMG.value!.path)) as ImageProvider,
                          )),
                      const CustomTextWidget(
                        text: "Tap to change image",
                        fontSize: 11,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: profileController.nameController,
                  labelText: "name",
                ),
                CustomTextField(
                  controller: profileController.addressController,
                  labelText: "address",
                ),
                const SizedBox(height: 10),
                CustomButton(text: "edit", onTap: ()async{
                  FocusScope.of(context).unfocus();
                  if(!await ConnectionChecker.connectionChecker()){
                    CommonSnackbarMessage.noInternetConnection();
                    return;
                  }
                  bool status = await profileController.profileUpdateFuncation();
                  if(status){
                    await profileController.getProfileInfo();
                    Get.back();
                  }
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
