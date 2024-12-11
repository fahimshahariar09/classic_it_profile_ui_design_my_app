import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/profile/widget/change_password_section.dart';
import 'package:myapp/view/screen/profile/widget/custom_switch.dart';
import 'package:myapp/view/screen/profile/widget/setting_list_tile.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              buildSizedBox(),
              //change password
              SettingListTile(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return const ChangePasswordSection();
                        });
                  },
                  titel: "change_password"),
              //change password
              Card(
                elevation: 4,
                surfaceTintColor: Colors.transparent,
                shape: const OutlineInputBorder(borderSide: BorderSide.none),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: CustomTextWidget(text: "language change"),
                    ),
                    CustomSwitch(
                      onTap: () {},
                      onText: "",
                      offText: "",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> buildLogOutDialog() {
    return Get.defaultDialog(
        title: "confirmation",
        titleStyle: const TextStyle(fontSize: 20, fontFamily: "Robotoserif"),
        content: const CustomTextWidget(
          text: "Do you went to log out?",
          fontSize: 16,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomTextWidget(
                    text: "cancel",
                    fontColor: Colors.white,
                  ),
                ),
              )
            ],
          )
        ]);
  }

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
