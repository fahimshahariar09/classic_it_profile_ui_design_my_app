import 'package:flutter/material.dart';
import 'package:myapp/view/screen/profile/widget/common_field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Edit"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          CommonField(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
