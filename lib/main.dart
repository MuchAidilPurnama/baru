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
          backgroundColor: Color.fromARGB(255, 252, 252, 0),
          title: Text("Belajar Flutter",
            style: TextStyle(backgroundColor: const Color.fromARGB(255, 102, 112, 131)),
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