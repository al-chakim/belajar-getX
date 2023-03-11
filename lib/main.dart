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
        title: Text('Bottom Sheets'),
      ),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) {
          //     return Padding(
          //       padding: EdgeInsets.only(
          //         bottom: MediaQuery.of(context).viewInsets.bottom,
          //       ),
          //       child: Container(
          //         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          //         color: Color.fromARGB(255, 203, 239, 255),
          //         child: Center(
          //           child: ListView(
          //             children: [
          //               Center(child: Text('Hallo')),
          //               SizedBox(
          //                 height: 7,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(20),
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 7,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(20),
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 7,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(20),
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 7,
          //               ),
          //               TextField(
          //                 decoration: InputDecoration(
          //                   border: OutlineInputBorder(
          //                     borderRadius: BorderRadius.circular(20),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // );

          Get.bottomSheet(
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                color: Color.fromARGB(255, 203, 239, 255),
                child: Center(
                  child: ListView(
                    children: [
                      Center(child: Text('Hallo')),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.folder_copy_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'SAVE',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
