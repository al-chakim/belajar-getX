import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/ui/pages/shop.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            OutlinedButton(
              onPressed: () {
                Get.to(() => Shope());
              },
              child: Text('Shop >>'),
            ),
          ],
        ),
      ),
    );
  }
}
