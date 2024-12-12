import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/image_view_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width,
                  padding: const EdgeInsets.only(top: 70, bottom: 20),
                  decoration: const BoxDecoration(
                    color: AppColors.bg1LightColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(
                            ImageViewWidget(
                                imageurl:
                                    "${profileController.userInfo['profile_image'] ?? ''}"),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ClipOval(
                              child: Obx(
                                () => FadeInImage.assetNetwork(
                                    height: 100,
                                    width: 100,
                                    placeholder: "asset/food/fish.png",
                                    image:
                                        "${profileController.userInfo['profile_image'] ?? ''}"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
