import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/route/page_name.dart';
import 'package:get_apps/route/page_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.home,
      getPages: AppRute.pages,
    );
  }
}
