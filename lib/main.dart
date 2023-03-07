import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        children: [],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Ini judulnya', 'Ini pesannya',
              backgroundColor: Colors.blue[900],
              colorText: Colors.white,
              duration: Duration(seconds: 2),
              animationDuration: Duration(milliseconds: 200));
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text('Hallo Everyone')));
        },
      ),
    );
  }
}
