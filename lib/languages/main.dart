import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/languages/homeview.dart';
import 'package:getx/Getx/languages/languages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('gu','IN'),
      title: 'Material App',
      home: Homeview()
    );
  }
}
