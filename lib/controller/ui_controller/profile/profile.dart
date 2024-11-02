import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final TextEditingController fastnameController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  var fastname = ''.obs;
  var lastname = ''.obs;
  var phone = ''.obs;
  var email = ''.obs;

  void updateName(String newName) {
    fastname.value = newName;
  }

  void updatelastName(String newPhone) {
    lastname.value = newPhone;
  }

  void updatePhone(String newPhone) {
    phone.value = newPhone;
  }

  void updateEmail(String newPhone) {
    email.value = newPhone;
  }
}
