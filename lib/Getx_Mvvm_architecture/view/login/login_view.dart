import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_Mvvm_architecture/res/components/roundbutton.dart';
import 'package:getx/Getx_Mvvm_architecture/utils/utils.dart';
import 'package:getx/Getx_Mvvm_architecture/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewController _logincontroller = Get.put(LoginViewController());

  final _fomekey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _fomekey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _logincontroller.EmialController.value,
                focusNode: _logincontroller.EmailFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snakBar('Email', 'Enter Email');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                    context,
                    _logincontroller.EmailFocusNode.value,
                    _logincontroller.PasswordFocusNode.value,
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Emial',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 5),
              TextFormField(
                controller: _logincontroller.PasswordController.value,
                focusNode: _logincontroller.PasswordFocusNode.value,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snakBar('Password', 'Enter Password');
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 5),
              Obx(() {
                return RoundButton(
                  title: 'Login',
                  loading: _logincontroller.loading.value,
                  onPress: () {
                    if (_fomekey.currentState!.validate()) {
                      _logincontroller.loginApi();
                    }
                  },
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
