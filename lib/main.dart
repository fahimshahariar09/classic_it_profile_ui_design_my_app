import 'package:flutter/material.dart';
import 'package:myapp/view/screen/payment/ssl_commerz.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment(),
    );
  }
}
