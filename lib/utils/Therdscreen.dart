import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Therdescreen extends StatefulWidget {
  const Therdescreen({super.key});

  @override
  State<Therdescreen> createState() => _TherdescreenState();
}

class _TherdescreenState extends State<Therdescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Secode Screen'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {

            }, child: Text('Go back'))
          ],
        ),
      )
    );
  }
}
