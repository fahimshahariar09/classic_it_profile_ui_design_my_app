import 'package:flutter/material.dart';
import 'package:myapp/view/screen/profile/widget/setting_list_tile.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SettingListTile(onTap: (){}, titel: "change_password")
          ],
        ),),
      ),
    );
  }
}
