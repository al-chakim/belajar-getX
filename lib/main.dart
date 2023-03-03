import 'package:flutter/material.dart';
import 'package:get_apps/pages/Page3.dart';
import 'package:get_apps/pages/home.dart';
import 'package:get/get.dart';
import 'package:get_apps/pages/page1.dart';
import 'package:get_apps/pages/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/page-1', page: () => PageSatu()),
        GetPage(name: '/page-2', page: () => PageDua()),
        GetPage(name: '/page-3', page: () => PageTiga()),
      ],
    );
  }
}
