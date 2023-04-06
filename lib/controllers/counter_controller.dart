import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 2;

  void increment() {
    counter++;
    update();
    print(counter);
  }
}
