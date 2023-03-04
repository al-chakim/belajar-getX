import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/routes/route_name.dart';
import './routes/route_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RuteNama.home,
      getPages: App.AppPages,
    );
  }
}
