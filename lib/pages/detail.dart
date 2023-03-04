import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${Get.parameters['id']}'),
      ),
      body: Center(
        child: Text('Product Name ${Get.parameters['name']}'),
      ),
    );
  }
}
