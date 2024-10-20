import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/otp.dart';

class OtpController extends GetxController {
  TextEditingController numConroller = TextEditingController();
  TextEditingController num1Conroller = TextEditingController();
  TextEditingController num2Conroller = TextEditingController();
  TextEditingController num3Conroller = TextEditingController();
  RxBool isLoading = true.obs;

  otoFun() async {
    isLoading.value = true;
    bool status = await OtpService.otpService(
        num: numConroller.text,
        num1: num1Conroller.text,
        num2: num2Conroller.text,
        num3: num3Conroller.text);
    isLoading.value = false;

    if (status) {
      return;
    }
  }

  @override
  void onInit() {
    numConroller.text = '5';
    num1Conroller.text = '4';
    num2Conroller.text = '8';
    num3Conroller.text = '3';
    super.onInit();
  }

}
