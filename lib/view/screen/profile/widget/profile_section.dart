import 'package:flutter/material.dart';
import 'package:myapp/view/common_widget/custom_text.dart';
import 'package:myapp/view/screen/profile/widget/change_password_section.dart';
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
                shape: OutlineInputBorder(borderSide: BorderSide.none),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: CustomTextWidget(text: "language change"),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
