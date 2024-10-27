import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/setting/setting.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ligth & night",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Switch(
                      value: settingController.isLightTheme.value,
                      onChanged: (value) {
                        settingController.changeTheme();
                      },activeColor: Colors.white,autofocus: true,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}