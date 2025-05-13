import 'package:get/get.dart';

class CounterController2 extends GetxController {

  RxDouble opacity = .4.obs;

  setOpecity(double value) {
    opacity.value = value;
  }

}