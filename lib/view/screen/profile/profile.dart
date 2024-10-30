import 'package:flutter/material.dart';
import 'package:myapp/view/common_widget/common_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CircleAvatar(radius: 50,),
          const SizedBox(height: 10),
          CommonButton(buttonName: "Save", onTap: (){}),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text("first name"),
              Text("first name"),
            ],
          ),
          const SizedBox(height: 10),
          const Text("phone"),
          const SizedBox(height: 10),
          const Text("email"),
        ],
      ),
    );
  }
}
