

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{
  RxBool isLightTheme = true.obs;

  changeTheme()async{
    isLightTheme.value =!isLightTheme.value;
    Get.changeTheme(!isLightTheme.value ? ThemeData.dark() :ThemeData.light());
  }
}