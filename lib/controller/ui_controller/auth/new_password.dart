import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/new_password.dart';

class NewPasswordController extends GetxController {
  TextEditingController oldpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController samepassword = TextEditingController();
  RxBool isLoading =true.obs;

  newpasswordFun() async {
    isLoading.value =true;
    bool status = await NewPasswordService.newpasswordService(
        oldpassword: oldpassword.text,
        newpassword: newpassword.text,
        samepassword: samepassword.text);
    isLoading.value =false;
    if(status){
      return ;
    }
  }

  @override
  void onInit() {
    oldpassword.text="12345678";
    newpassword.text="12345678";
    samepassword.text="12345678";
    super.onInit();
  }
}
