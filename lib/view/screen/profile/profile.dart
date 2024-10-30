import 'package:flutter/material.dart';
import 'package:myapp/view/common_widget/common_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(radius: 50,),
          SizedBox(height: 10),
          CommonButton(buttonName: "Save", onTap: (){}),
          SizedBox(height: 10),
          Row(
            children: [
              Text("first name"),
              Text("first name"),
            ],
          ),
          SizedBox(height: 10),
          Text("phone"),
          SizedBox(height: 10),
          Text("email"),
        ],
      ),
    );
  }
}
