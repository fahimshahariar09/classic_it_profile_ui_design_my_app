import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  TextEditingController numConroller = TextEditingController();
  TextEditingController num1Conroller = TextEditingController();
  TextEditingController num2Conroller = TextEditingController();
  TextEditingController num3Conroller = TextEditingController();
  RxBool isLoading = true.obs;
}
