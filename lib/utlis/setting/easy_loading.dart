
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:myapp/utlis/theme/app_color.dart';

class EasyLoadingSettings{

  easyloadingSetting(){
    EasyLoading.instance
        ..displayDuration = Duration(milliseconds: 500)
        ..loadingStyle = EasyLoadingStyle.custom
        ..backgroundColor =AppColors.bg1LightColors
        ..indicatorColor = AppColors.bgLightColors
        ..maskColor =AppColors.bg1LightColors
        ..textColor =AppColors.bgLightColors
        ..contentPadding =EdgeInsets.symmetric(horizontal: 50,vertical: 20)
        ..indicatorType=EasyLoadingIndicatorType.fadingGrid
        ..userInteractions =
  }
}