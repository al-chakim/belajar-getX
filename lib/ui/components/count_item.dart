import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/count_c.dart';

class CountItem extends StatelessWidget {
  final itung = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            '${itung.quantity}',
            style: TextStyle(fontSize: 35),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                // itung.kurang();
                itung.quantity.value--;
                Get.find<CounterController>(tag: 'total').total.value--;
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                // itung.ulang();
                itung.quantity.value = 0;
              },
              icon: Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () {
                //itung.tambah();
                itung.quantity.value++;
                Get.find<CounterController>(tag: 'total').total.value++;
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
