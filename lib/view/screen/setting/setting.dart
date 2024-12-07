import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/setting/setting.dart';
import 'package:myapp/view/common_widget/custom_button.dart';
import 'package:myapp/view/screen/auth/sign_in.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting".tr),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Obx((() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ligth & night".tr,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Switch(
                        value: settingController.isLightTheme.value,
                        onChanged: (value) {
                          settingController.changeTheme();
                        },
                        activeColor: Colors.black,
                        autofocus: true,
                      )
                    ],
                  ))),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("language".tr),
                  Obx(() => DropdownButton(
                        hint: const Text("Please choose a location"),
                        value: settingController.selectedLanguage.value,
                        onChanged: (newValue) {
                          settingController.selectedLanguage.value = newValue!;
                          settingController.changeLanguageFun();
                        },
                        items: settingController.languageList.map((location) {
                          return DropdownMenuItem(
                            value: location,
                            child: Text(location),
                          );
                        }).toList(),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              CommonButton(
                  buttonName: "LogOut",
                  onTap: () {
                    Get.to(const SignIn());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
