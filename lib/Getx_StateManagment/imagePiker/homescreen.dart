import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_StateManagment/imagePiker/counter_controller.dart';

class HomeScreen5 extends StatefulWidget {
  const HomeScreen5({super.key});

  @override
  State<HomeScreen5> createState() => _HomeScreen5State();
}

class _HomeScreen5State extends State<HomeScreen5> {
  ImagePickerController imagePickerController = Get.put(
    ImagePickerController(),
  );

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        imagePickerController.imagepath.isNotEmpty
                            ? FileImage(
                              File(imagePickerController.imagepath.toString()),
                            )
                            : null,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      imagePickerController.getImage();
                    },
                    child: Text('Picke Image'),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
