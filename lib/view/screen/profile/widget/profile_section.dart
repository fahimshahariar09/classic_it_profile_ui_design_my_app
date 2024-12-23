import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/log_out.dart';
import 'package:myapp/controller/local_storage/local_storage.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/home/home_page.dart';
import 'package:myapp/view/screen/profile/widget/change_password_section.dart';
import 'package:myapp/view/screen/profile/widget/custom_switch.dart';
import 'package:myapp/view/screen/profile/widget/log_out.dart';
import 'package:myapp/view/screen/profile/widget/setting_list_tile.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
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
                      onTap: () {
                        profileController.languageBN.value
                            ? Get.updateLocale(const Locale('en', 'us'))
                            : Get.updateLocale(const Locale('bn', 'BD'));
                        profileController.languageBN.value
                            ? LocalData()
                                .writeData(key: 'languageType', value: 'EN')
                            : LocalData()
                                .writeData(key: 'languageType', value: 'BN');
                        profileController.languageBN.value =
                            !profileController.languageBN.value;
                      },
                      onText: "EN",
                      offText: "BN",
                    )
                  ],
                ),
              ),
              //logout
              LogOut(onTap: (){
                buildLogOutDialog();
              })
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
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const CustomTextWidget(
                    text: "cancel",
                    fontColor: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  var status = await LogOutService.logoutService();
                  if (status) {
                    await LocalData().deleteData(key: "userinfo");
                    await LocalData().deleteData(key: "token");
                    Get.offAll(() => const HomePage());
                  }
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: const CustomTextWidget(
                    text: "log_out",
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
