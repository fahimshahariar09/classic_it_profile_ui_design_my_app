import 'dart:developer';

class SignUpService {
  static Future signupService({
    required String name,
    required String email,
    required String password,
    required String conpassword,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}
