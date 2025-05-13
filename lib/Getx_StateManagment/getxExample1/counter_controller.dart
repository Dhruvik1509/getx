
import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt counter = 1.obs;

  incremntCounter(){

    counter.value++;
    print(counter.value);
  }

}