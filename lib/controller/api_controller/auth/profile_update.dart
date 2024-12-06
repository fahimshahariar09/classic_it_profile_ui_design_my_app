import 'package:flutter/cupertino.dart';

class ProfileUpdateService {
  static Future<bool> profileupdateService() async {
    try {
      await Future.delayed(Duration(seconds: 2));

      var data ={
        "id":4,
        "name":"fahim",
        "username":"null",
        "email":"fahim@gmail",
        "phone":01547952526,
        "address":"address",
        "phone":"",
      };

    } catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
