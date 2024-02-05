import 'package:belajar_flutter/container_widget.dart';
import 'package:belajar_flutter/gridview/grid_basic.dart';
import 'package:belajar_flutter/gridview/grid_builder.dart';
import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:belajar_flutter/gridview/latihan_grid.dart';
import 'package:belajar_flutter/latihan1.dart';
import 'package:belajar_flutter/latihan2.dart';
import 'package:belajar_flutter/latihan3.dart';
import 'package:belajar_flutter/listview/latihan_list.dart';
import 'package:belajar_flutter/listview/list_basic.dart';
import 'package:belajar_flutter/listview/list_builder.dart';
import 'package:belajar_flutter/listview/list_separated.dart';
import 'package:belajar_flutter/screens/home_screen.dart';
import 'package:belajar_flutter/screens/menu_screen.dart';
import 'package:belajar_flutter/screens/second_screen.dart';
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
        // body: HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => NavigationMenu(),
          'second': (context) => SecondScreen(),
          'third': (context) => ThirdScreen(),
        }
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