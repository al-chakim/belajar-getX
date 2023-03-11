import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => Hitung());
            },
            icon: Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'HOME PAGE',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

class Hitung extends StatelessWidget {
  final countC = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DepMen'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Obx(
                  () => Text(
                    "${countC.count}",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        countC.kurang();
                      },
                      icon: Icon(Icons.remove),
                    ),
                    IconButton(
                      onPressed: () {
                        countC.ulang();
                      },
                      icon: Icon(Icons.refresh),
                    ),
                    IconButton(
                      onPressed: () {
                        countC.tambah();
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  void tambah() => count++;
  void kurang() => count--;
  void ulang() => count(0);
}
