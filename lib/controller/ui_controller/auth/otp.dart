import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/api_controller/auth/otp.dart';

class OtpController extends GetxController {
  TextEditingController numConroller = TextEditingController();
  TextEditingController num1Conroller = TextEditingController();
  TextEditingController num2Conroller = TextEditingController();
  TextEditingController num3Conroller = TextEditingController();
  RxBool isLoading = true.obs;

  otoFun()async{
    isLoading.value=true;
    bool status = await OtpService.otpService();
  }

}
