import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

class ForgetService {
  static Future forgetService() async {
    try {} catch (e) {
      log("error $e");
    }
    return false;
  }
}
