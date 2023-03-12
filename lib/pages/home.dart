import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_apps/controllers/count_c.dart';
import 'package:get_apps/pages/count.dart';
import 'package:get_apps/routes/route_name.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //Get.toNamed(RuteNama.coun);
              Get.toNamed(RuteNama.coun);
            },
            child: Text(
              "Let's Count",
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
