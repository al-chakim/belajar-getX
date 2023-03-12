import 'package:get/get.dart';
import 'package:get_apps/pages/count.dart';
import 'package:get_apps/pages/detail.dart';
import 'package:get_apps/pages/home.dart';
import 'package:get_apps/pages/product.dart';
import 'package:get_apps/routes/route_name.dart';

class App {
  static final AppPages = [
    GetPage(
      name: RuteNama.home,
      page: () => Home(),
    ),
    GetPage(
      name: RuteNama.Product,
      page: () => Product(),
    ),
    GetPage(
      name: RuteNama.Product + '/:id?',
      page: () => Detail(),
    ),
    GetPage(
      name: RuteNama.coun,
      page: () => Counting(),
    ),
  ];
}
