import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/getx_localization/languges.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/routes/routes.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/view/mvvmSplashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      translations: Languges(),
      locale: Locale('en','US'),
      getPages: AppRoutes.appRoutes(),
      home: MvvmSplashscreen(),
    );
  }
}
