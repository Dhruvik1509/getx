import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/repository/login_repository/login_repository.dart';
import 'package:getx/Getx/Getx_Mvvm_architecture/utils/utils.dart';

class LoginViewController extends GetxController {
  final _api = LoginRepository();

  final EmialController = TextEditingController().obs;
  final PasswordController = TextEditingController().obs;

  final EmailFocusNode = FocusNode().obs;
  final PasswordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': EmialController.value.text,
      'password': PasswordController.value.text,
    };
    _api
        .loginApi(data)
        .then((value) {
          loading.value = false;
          if (value['error'] == 'user not found') {
            Utils.snakBar('Login', value['error']);
          } else {
            Utils.snakBar('Login', 'Login Successfully');
          }
        })
        .onError((error, stackTrace) {
          loading.value = false;
          Utils.snakBar('Error', 'USer not Faunde');
        });
  }
}
