import 'package:flutter/material.dart';
import 'package:myapp/utlis/theme.dart';
import 'package:myapp/view/screen/profile/profile.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      home: const Profile(),
    );
  }
}
