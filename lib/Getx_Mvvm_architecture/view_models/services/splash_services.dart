
import 'dart:async';

import 'package:get/get.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/routes/routes.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/routes/routes_name.dart';

class SplashServies{

  void isLogin(){

    Timer(Duration(seconds: 3),() {
      Get.toNamed(RouteName.Loginscreen);
    },);

  }

}