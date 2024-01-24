import 'package:belajar_flutter/container_widget.dart';
import 'package:belajar_flutter/latihan1.dart';
import 'package:belajar_flutter/latihan2.dart';
import 'package:belajar_flutter/latihan3.dart';
import 'package:belajar_flutter/listview/latihan_list.dart';
import 'package:belajar_flutter/listview/list_basic.dart';
import 'package:belajar_flutter/listview/list_builder.dart';
import 'package:belajar_flutter/listview/list_separated.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 182, 158, 187),
          title: Text("Belajar Flutter",
            style: TextStyle(backgroundColor: Color.fromARGB(255, 174, 202, 255)),
        ),
        ),
        body: LatihanList(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}