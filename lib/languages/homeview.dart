import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            Row(
              children: [
                OutlinedButton(onPressed: () {
                  Get.updateLocale(Locale('en','US'));
                }, child: Text('English')),
                OutlinedButton(onPressed: () {
Get.updateLocale(Locale('gu','IN'));
                }, child: Text('Gujarati'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
