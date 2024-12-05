import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackbarMessage {
  static noInternetConnection() {
    Get.snackbar("You are offline", "please check internet connection",
        backgroundColor: Colors.red.shade50,
        colorText: Colors.redAccent,
        snackStyle: SnackStyle.FLOATING,
        duration: Duration(seconds: 1),
        overlayBlur: 5,
        icon: Icon(
          Icons.wifi_off_outlined,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }
}
