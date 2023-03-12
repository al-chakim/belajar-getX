import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/routes/route_name.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RuteNama.Product + '/1?name=Jaket&ukuran=XL');
                },
                child: Text(
                  "Product-1",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      RuteNama.Product + '/2?name=Kaos Kaki&ukuran=Jumbo');
                },
                child: Text(
                  "Product-2",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      RuteNama.Product + '/3?name=Sepatu Sendal&ukuran=45');
                },
                child: Text(
                  "Product-3",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
