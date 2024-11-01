

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final TextEditingController fastnameController =TextEditingController();
  final TextEditingController lastController =TextEditingController();
  final TextEditingController nameController =TextEditingController();
  final TextEditingController phoneController =TextEditingController();
  var name = ''.obs;
  var phone = ''.obs;

  void updateName(String newName) {
    name.value = newName;
  }

  void updatePhone(String newPhone) {
    phone.value = newPhone;
  }
}