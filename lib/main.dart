import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      theme: ThemeData.dark(),
    );
  }
}
