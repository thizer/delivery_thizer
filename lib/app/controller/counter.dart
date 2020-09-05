import 'package:get/get.dart';

class CounterController extends GetxController {
  final val = 0.obs;

  increment() {
    val.value++;
  }

  decrement() {
    val.value--;
  }
}
