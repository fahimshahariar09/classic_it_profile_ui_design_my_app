import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:myapp/controller/local_storage/local_storage.dart';

class ProfileUpdateService {
  static Future<bool> profileupdateService({required String name,required String address,required String image,}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      var data = {
        "id": 4,
        "name": "fahim",
        "username": "null",
        "email": "fahim@gmail",
        "phone": 01547952526,
        "address": "address",
        "profile":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ530QmZxSQdjIVUK53CXis8gnzUG5m7Zsupg&s",
        "date": "05 dec 2024"
      };
      await LocalData().writeData(key: "userInfo", value: jsonEncode(data));
      await EasyLoading.showSuccess("success");
      return true;
    } catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
