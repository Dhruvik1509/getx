import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller2.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  CounterController2 controller2 = Get.put(CounterController2());

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller2.opacity.value),
              ),
              Slider(value: controller2.opacity.value, onChanged: (value) {
                controller2.setOpecity(value);
              }),
            ],
          );
        }),
      ),
    );
  }
}
