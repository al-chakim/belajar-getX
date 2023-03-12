import 'package:get/get.dart';
import 'package:get_apps/controllers/count_c.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CounterController());
  }
}
