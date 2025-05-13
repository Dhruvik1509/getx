import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Getx_StateManagment/Api_with_Getx/counter_controller.dart';
import 'package:getx/Getx/Getx_StateManagment/getxExample1/counter_controller.dart';

class HomeScreen6 extends StatefulWidget {
  const HomeScreen6({super.key});

  @override
  State<HomeScreen6> createState() => _HomeScreen6State();
}

class _HomeScreen6State extends State<HomeScreen6> {

  ApiController _controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _controller.EmailController.value,
          decoration: InputDecoration(hintText: 'Email',border: OutlineInputBorder()),
        ),
          SizedBox(height: 5,),

          TextFormField(
            controller: _controller.PasswordController.value,
            decoration: InputDecoration(hintText: 'Password',border: OutlineInputBorder()),
          ),
          Obx(() {
            return ElevatedButton(onPressed: () {
              _controller.loginApi();
            }, child: _controller.loading.value ? CircularProgressIndicator() : Text('Submite'));
          },)
        ],
      ),
    );
  }
}
