import 'package:flutter/material.dart';

class InternetCheck extends StatelessWidget {
  const InternetCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
