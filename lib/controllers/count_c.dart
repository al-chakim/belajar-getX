import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  var quantity = 0.obs;
  var total = 0.obs;

  void tambah() => count++;
  void kurang() => count--;
  void ulang() => count(0);
}
