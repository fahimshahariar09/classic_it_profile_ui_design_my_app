import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utlis/language.dart';
import 'package:myapp/utlis/theme.dart';
import 'package:myapp/view/screen/profile/profile.dart';
import 'package:myapp/view/screen/setting/setting.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      translations: AppLanguage(),
      locale: const Locale("bn"),
      home: Setting(),
    );
  }
}
