

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final TextEditingController fastnameController =TextEditingController();
  final TextEditingController lastController =TextEditingController();
  final TextEditingController phoneController =TextEditingController();
  final TextEditingController emailController =TextEditingController();
  var fastname = ''.obs;
  var lastname = ''.obs;

  void updateName(String newName) {
    fastname.value = newName;
  }

  void updatelastName(String newPhone) {
    lastname.value = newPhone;
  }
}