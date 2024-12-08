import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/controller/local_storage/local_storage.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  RxInt selectedTab = 0.obs;
  RxInt selectedOrderTab = 1.obs;
  RxBool isLoading = false.obs;
  RxMap<dynamic, dynamic> userInfo = {}.obs;
  ImageSource imageSource = ImageSource.camera;
  late Rx<File?> profileIMG = Rx<File?>(null);
  final picker = ImagePicker();
  @override
  void onInit() {
    super.onInit();
  }

  getProfileInfo() async {
    var a = await LocalData().readData(key: "userInfo");
    if (a != "") {
      userInfo.value = jsonDecode(a);
      nameController.text = userInfo['name'] ?? "";
      addressController.text = userInfo['address'] ?? "";
    }
  }

  getImage() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      final pickedFile =
          await picker.pickImage(source: imageSource, imageQuality: 25);
      if (pickedFile != null) {
        profileIMG.value = File(pickedFile.path);
      }
    }
  }
}
