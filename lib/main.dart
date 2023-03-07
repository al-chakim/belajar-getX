import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'Coba Dialog',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(
            AlertDialog(
              title: Text('Judul'),
              content: Text('Isi pesan'),
            ),
          );

          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return AlertDialog(
          //         title: Text('Judul'),
          //         content: Text('Isi pesan'),
          //       );
          //     });

          // Get.defaultDialog(
          //   barrierDismissible: false,
          //   title: 'Judul',
          //   middleText: 'Isi Pesan/Deskripsi',

          //   //default cancel
          //   textCancel: 'batal',
          //   cancelTextColor: Colors.red,
          //   onCancel: () {},

          //   //custom cancel
          //   cancel: ElevatedButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     child: Text('Batal'),
          //   ),

          //   //default confirm
          //   textConfirm: 'oke',
          //   confirmTextColor: Colors.white,
          //   onConfirm: () {},

          //   //custom confirm
          //   confirm: ElevatedButton(onPressed: () {}, child: Text('oke')),

          //   //custom button
          //   actions: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text('Pilihan lain'),
          //     ),
          //   ],
          // );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
