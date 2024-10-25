import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Payment"),
            Image.asset("name"),
          ],
        ),
      ),
    );
  }
}
