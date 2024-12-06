import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';

class ChangePasswordService {
  static Future<bool> changepasswordService() async {
    try {} catch (e) {
      log("error $e");
    }
    await EasyLoading.showError("something went wrong...!!");
    return false;
  }
}
