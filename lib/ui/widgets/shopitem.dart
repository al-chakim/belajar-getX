import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/shopC.dart';

class ShopItem extends StatelessWidget {
  final shopi = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Hallo',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 50),
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  shopi.quantity.value--;
                  Get.find<ShopController>(tag: 'total').total.value--;
                },
                icon: Icon(Icons.remove),
              ),
              Obx(
                () => Text(
                  '${shopi.quantity}',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  shopi.quantity.value++;
                  Get.find<ShopController>(tag: 'total').total.value++;
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
