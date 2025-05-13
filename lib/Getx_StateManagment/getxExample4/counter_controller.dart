import 'package:get/get.dart';

class CounterController4 extends GetxController {
  RxList<String> fruits =
      [
        "Apple",
        "Banana",
        "Orange",
        "Mango",
        "Pineapple",
        "Strawberry",
        "Grapes",
        "Watermelon",
        "Papaya",
        "Kiwi",
        "Cherry",
        "Blueberry",
        "Peach",
        "Pear",
        "Guava",
        "Pomegranate",
        "Lemon",
        "Coconut",
        "Lychee",
        "Dragon Fruit",
      ].obs;

  RxList<dynamic> tempFruitsList = [].obs;

  addFavorite(String value) {
    tempFruitsList.add(value);
  }

  RemoveFavorite(String value) {
    tempFruitsList.remove(value);
  }
}
