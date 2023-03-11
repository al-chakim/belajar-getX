import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/shopC.dart';
import 'package:get_apps/ui/widgets/shopitem.dart';

class Shope extends StatelessWidget {
  final shopi = Get.put(ShopController(), tag: 'total');
  final quantity = Get.create(() => ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => ShopItem(),
        ),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(
          () => Text(
            '${shopi.total}',
          ),
        ),
      ),
    );
  }
}
