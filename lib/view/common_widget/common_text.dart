import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.titel});


  final String titel;

  @override
  Widget build(BuildContext context) {
    return Text(
      "data",
      style: TextStyle(
          color: Colors.cyan,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis),
      maxLines: 1,
    );
  }
}
