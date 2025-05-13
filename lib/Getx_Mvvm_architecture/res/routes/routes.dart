import 'package:get/get.dart';

import 'package:getx/Getx_Mvvm_architecture/res/routes/routes_name.dart';
import 'package:getx/Getx_Mvvm_architecture/view/login/login_view.dart';
import 'package:getx/Getx_Mvvm_architecture/view/mvvmSplashscreen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RouteName.MvvmSplashscreen,
      page: () => MvvmSplashscreen(),
    ),
    GetPage(
      name: RouteName.Loginscreen,
      page: () => LoginView(),
    ),
  ];
}
