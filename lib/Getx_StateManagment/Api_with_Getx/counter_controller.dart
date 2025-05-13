import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiController extends GetxController {
  final EmailController = TextEditingController().obs;
  final PasswordController = TextEditingController().obs;

  RxBool loading = false.obs;

  Future loginApi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': EmailController.value.text,
          'password': PasswordController.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successfull', 'Login');
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', data['Error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}

// eve.holt@reqres.in
// cityslicka