import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/count_c.dart';
import 'package:get_apps/ui/components/count_item.dart';

class Counting extends StatelessWidget {
  // // final itung = Get.put(CounterController());
  final itung = Get.put(CounterController(), tag: 'total');
  final quantity = Get.create(() => CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count'),
      ),
      body: SafeArea(
        child: ListView(
          // itemCount: 3,
          // itemBuilder: (context, index) => CountItem(),
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  CountItem(),
                  SizedBox(
                    height: 30,
                  ),
                  CountItem(),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 146, 250),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Obx(
                          () => Text(
                            ' Total Counter : ${itung.total}',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            itung.total.value = 0;
                          },
                          icon: Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: CircleAvatar(
      //   child: Obx(
      //     () => Text('${itung.total}'),
      //   ),
      // ),
    );
  }
}
