import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_StateManagment/getxExample1/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterController.counter.toString(),
                style: TextStyle(fontSize: 60),
              ),
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incremntCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
