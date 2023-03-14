import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Theme'),
      ),
      body: Center(
        child: Text(
          'Theme data flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeTheme(
            Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
          );
        },
      ),
    );
  }
}
