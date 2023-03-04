import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/pages/detail.dart';
import 'package:get_apps/pages/home.dart';
import 'package:get_apps/pages/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/produk', page: () => Product()),
        GetPage(name: '/detail/:id?', page: () => Detail()),
      ],
    );
  }
}
