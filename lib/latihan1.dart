import 'package:flutter/material.dart';

class latihan1 extends StatelessWidget {
  const latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [
          Column(
            children: [
              Text("Ini Logo 1"),
              FlutterLogo(
                size: 50,
              ),
            ],
          ),
          Column(
            children: [
              Text("Ini Logo 3"),
              FlutterLogo(
                size: 50,
              ),
            ],
          ),
        ],
        ),
          FlutterLogo(
          size: 50,
        ),
         Column(mainAxisAlignment: MainAxisAlignment.spaceAround, 
         children: [
          Column(
            children: [
              Text("Ini Logo 2"),
              FlutterLogo(
                size: 50,
              ),
            ],
          ),
          Column(
            children: [
              Text("Ini Logo 4"),
              FlutterLogo(
                size: 50,
              ),
            ],
          ),
        ]),
      ],
    );
  }
}