import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class EasyLoadingSettings {
  easyloadingSetting() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 500)
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = AppColors.bg1LightColor
      ..indicatorColor = AppColors.bgLightColor
      ..maskColor = AppColors.bg1LightColor
      ..textColor = AppColors.bgLightColor
      ..contentPadding =
          const EdgeInsets.symmetric(horizontal: 50, vertical: 20)
      ..indicatorType = EasyLoadingIndicatorType.fadingGrid
      ..userInteractions = false
      ..successWidget = const Icon(
        Icons.check_circle_rounded,
        size: 40,
        color: Colors.white,
      )
      ..errorWidget = const Icon(
        Icons.error_outline,
        size: 30,
        color: Colors.white,
      )
      ..dismissOnTap = false;
  }
}
