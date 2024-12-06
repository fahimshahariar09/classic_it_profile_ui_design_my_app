
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ChangePasswordService {
  static Future<bool> changepasswordService() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      await EasyLoading.showSuccess("changed");
      return true;
    } catch (e) {
      debugPrint("error $e");
    }
    await EasyLoading.showError("something went wrong...!!");
    return false;
  }
}
