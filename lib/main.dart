import 'package:flutter/material.dart';
import 'package:myapp/view/screen/auth/forget_password.dart';
import 'package:myapp/view/screen/auth/new_password.dart';
import 'package:myapp/view/screen/auth/verification.dart';

void main(){

  runApp(const MyClass());
}
class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Verification(),
    );
  }
}
