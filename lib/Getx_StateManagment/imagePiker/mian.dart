import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Getx_StateManagment/getxExample3/homescreen.dart';
import 'package:getx/Getx/Getx_StateManagment/getxExample4/homescreen.dart';
import 'package:getx/Getx/Getx_StateManagment/imagePiker/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeScreen5()
    );
  }
}
