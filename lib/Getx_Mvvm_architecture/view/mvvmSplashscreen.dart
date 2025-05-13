import 'package:flutter/material.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/components/general_exception_widget.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/components/internet_exception_widget.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/res/components/roundbutton.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/utils/utils.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/view_models/services/splash_services.dart';

class MvvmSplashscreen extends StatefulWidget {
  const MvvmSplashscreen({super.key});

  @override
  State<MvvmSplashscreen> createState() => _MvvmSplashscreenState();
}

class _MvvmSplashscreenState extends State<MvvmSplashscreen> {

  SplashServies splashServies  = SplashServies();
  @override
  void initState() {
    splashServies.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Back')
            ]),
      ),
    );
  }
}
