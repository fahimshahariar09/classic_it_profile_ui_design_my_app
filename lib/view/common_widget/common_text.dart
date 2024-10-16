import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.titel,
      this.fSize,
      this.fWeight,
      this.overflow,
      this.maxLine,
      this.fColor});

  final String titel;
  final double? fSize;
  final Color? fColor;
  final FontWeight? fWeight;
  final TextOverflow? overflow;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
          color: Colors.cyan,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis),
      maxLines: 1,
    );
  }
}
