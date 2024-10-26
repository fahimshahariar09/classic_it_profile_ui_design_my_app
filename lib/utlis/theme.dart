
import 'package:flutter/material.dart';

class AppTheme{
  ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      )
    )
  );
}