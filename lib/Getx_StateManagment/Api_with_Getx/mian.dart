import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Getx_StateManagment/Api_with_Getx/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeScreen6()
    );
  }
}
