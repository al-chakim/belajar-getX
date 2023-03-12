import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/count_c.dart';
import 'package:get_apps/routes/route_page.dart';

class Counting extends StatelessWidget {
  final itung = Get.put(CounterController());
  // final totalItung = Get.create(() => CounterController(), tag: 'total');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count'),
      ),
      body: Center(
        child: Column(
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
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 146, 250),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => Text(
                  ' Total Counter : ${itung.quantity}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
