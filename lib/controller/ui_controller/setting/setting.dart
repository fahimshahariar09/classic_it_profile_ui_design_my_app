

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{
  //darkmode
  RxBool isLightTheme = true.obs;
  //language
  RxString selectedLanguage ='BD'.obs;
  RxList<String> languageList =<String>[].obs;

  //darkmode
  changeTheme()async{
    isLightTheme.value =!isLightTheme.value;
    Get.changeTheme(!isLightTheme.value ? ThemeData.dark() :ThemeData.light());
  }
}