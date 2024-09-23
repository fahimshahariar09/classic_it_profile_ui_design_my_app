import 'package:flutter/material.dart';
import 'package:myapp/view/profile.dart';
import 'package:myapp/view/screen/profile_screen.dart';

void main(){

  runApp(const MyClass());
}
class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
