import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_apps/controllers/count_c.dart';
// import 'package:get_apps/utils/trans.dart';

class Home extends StatelessWidget {
  final c = Get.put(Con());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
        actions: [
          IconButton(
            onPressed: () {
              Get.updateLocale(
                Locale('id'),
              );

              // if (MyTranslation() == 'en') {
              //   Get.updateLocale(
              //     Locale('id'),
              //   );
              // } else {
              //   Get.updateLocale(
              //     Locale('id'),
              //   );
              // }
            },
            icon: Icon(Icons.language),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'body'.tr,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => Text(
                '${c.total}',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    //c.kurang();
                    Get.find<Con>().total.value--;
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    //c.ulang();
                    Get.find<Con>().total.value = 0;
                  },
                  icon: Icon(Icons.refresh),
                ),
                IconButton(
                  onPressed: () {
                    //c.tambah();
                    Get.find<Con>().total.value++;
                  },
                  icon: Icon(
                    Icons.add,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
