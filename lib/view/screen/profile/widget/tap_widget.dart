import 'package:flutter/material.dart';

class TapWidget extends StatelessWidget {
  const TapWidget({super.key, required this.onTap, this.value});

  final VoidCallback onTap;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(),
    );
  }
}
