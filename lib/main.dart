import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/pages/home.dart';
import 'package:get_apps/utils/trans.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: Locale('en'),
      home: Home(),
    );
  }
}
