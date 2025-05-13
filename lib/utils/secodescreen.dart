import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Secodescreen extends StatefulWidget {

  var name;

   Secodescreen({super.key,this.name});

  @override
  State<Secodescreen> createState() => _SecodescreenState();
}

class _SecodescreenState extends State<Secodescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Secode Screen'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ],
        ),
      )
    );
  }
}

//appBar: AppBar(title: Text('Secode Screen'+Get.arguments[0]),),

// TextButton(onPressed: () {
//              // Get.to(Therdescreen());
//             }, child: Text('NextScreen')),
//             TextButton(onPressed: () {
//               //Get.back();
//             }, child: Text('Go back'))