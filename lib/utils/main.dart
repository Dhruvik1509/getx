import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Homescreen(),

    );
  }
}
// getPages: [
// GetPage(name: '/', page: () => Homescreen(),),
// GetPage(name: '/secode', page: () => Secodescreen(),),
// GetPage(name: '/third', page: () => Therdescreen()),
// ],