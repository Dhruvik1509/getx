import 'package:get/get.dart';

class CounterController3 extends GetxController {
  RxBool notificstion = false.obs;

  setNotification(bool value) {

    notificstion.value = value;

  }
}
