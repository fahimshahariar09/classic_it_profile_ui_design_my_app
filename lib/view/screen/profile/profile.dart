import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';
import 'package:myapp/utlis/theme/app_color.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/common_widget/image_view_widget.dart';
import 'package:myapp/view/screen/profile/widget/profile_edit_section.dart';
import 'package:myapp/view/screen/profile/widget/profile_section.dart';

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
            Obx(
              () => Stack(
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
                                    fit: BoxFit.cover,
                                    placeholder: "asset/food/fish.png",
                                    image:
                                        "${profileController.userInfo['profile_image'] ?? ''}",
                                    imageErrorBuilder: (context, o, t) {
                                      return const CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "data:image/png;base64,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"),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomTextWidget(
                            text:
                                "${profileController.userInfo['name'] ?? "Please update your name"}",
                            fontColor: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                        CustomTextWidget(
                            text:
                                "${profileController.userInfo['email'] ?? "Empty E-mail"}",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomTextWidget(
                                text: "phone",
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 13),
                            CustomTextWidget(
                                text: "${profileController.userInfo['phone']}",
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 13)
                          ],
                        ),
                        CustomTextWidget(
                            text:
                                "${profileController.userInfo['address'] ?? "Empty E-mail"}",
                            fontWeight: FontWeight.w300,
                            fontColor: Colors.white,
                            fontSize: 13)
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 10,
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (builder) {
                              return const ProfileEditSection();
                            });
                      },
                      icon: const Icon(
                        Icons.edit_note_sharp,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ProfileSection(),
          ],
        ),
      ),
    );
  }
}
