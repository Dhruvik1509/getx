import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/Getx/Getx_StateManagment/getxExample4/counter_controller.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({super.key});

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  CounterController4 controller4 = Get.put(CounterController4());

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: controller4.fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (controller4.tempFruitsList.contains(controller4.fruits[index].toString(),))
                  {
                    controller4.RemoveFavorite(controller4.fruits[index].toString());
                  } else {
                    controller4.addFavorite(controller4.fruits[index].toString());
                  }
                },
                title: Text(controller4.fruits[index].toString()),
                trailing: Obx(() => Icon(
                  Icons.favorite,
                  color:
                  controller4.tempFruitsList.contains(
                    controller4.fruits[index].toString(),
                  )
                      ? Colors.red
                      : Colors.white,
                ),)
              ),
            );
          },
        );
      }),
    );
  }
}
