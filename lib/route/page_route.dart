import 'package:get/get.dart';
import 'package:get_apps/pages/home.dart';
import 'package:get_apps/pages/page1.dart';
import 'package:get_apps/pages/page2.dart';
import 'package:get_apps/pages/Page3.dart';
import 'package:get_apps/route/page_name.dart';

class AppRute {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => Home(),
    ),
    GetPage(
      name: RouteName.page_1,
      page: () => PageSatu(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => PageDua(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => PageTiga(),
    ),
  ];
}
