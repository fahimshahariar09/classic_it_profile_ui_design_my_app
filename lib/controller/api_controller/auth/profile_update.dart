import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ProfileUpdateService {
  static Future<bool> profileupdateService() async {
    try {
      await Future.delayed(Duration(seconds: 2));

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
      await EasyLoading.showSuccess("success");
      return true;
    } catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
