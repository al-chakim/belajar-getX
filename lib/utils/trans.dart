import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Flutter Home Page',
          'body': 'You have pushed the button this many time : ',
        },
        'id': {
          'title': 'Halaman Utama Flutter',
          'body': 'Kamu sudah menekan tombol sebanyak : ',
        },
      };
}
