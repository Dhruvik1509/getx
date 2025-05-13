import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_StateManagment/getxExample3/counter_controller.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  CounterController3 controller3 = Get.put(CounterController3());

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  Switch(
                    value: controller3.notificstion.value,
                    onChanged: (value) {
                      controller3.setNotification(value);
                    },
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
