
import 'dart:async';

import 'package:get/get.dart';

import '../../res/routes/routes_name.dart';

class SplashServies{

  void isLogin(){

    Timer(Duration(seconds: 3),() {
      Get.toNamed(RouteName.Loginscreen);
    },);

  }

}