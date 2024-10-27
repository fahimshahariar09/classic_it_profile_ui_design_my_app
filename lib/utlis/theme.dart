
import 'package:flutter/material.dart';

class AppTheme{

  // ligth theme
  ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      )
    )
  );

  //darkTheme
  ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      )
    )
  );
}