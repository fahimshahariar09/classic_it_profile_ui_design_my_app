import 'dart:developer';

class ForgetService {
  static Future forgetService({required String email}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}