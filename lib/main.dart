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
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'Coba SnackBar',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
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
        child: Icon(Icons.add),
      ),
    );
  }
}
