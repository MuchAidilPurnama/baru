import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini adalah isi row 1"),
        Text("Ini adalah isi row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ini adalah isi column 1"),
            Text("Ini adalah isi column 2"),
            Text("Ini adalah isi column 3"),
          ],
        ),
      ],
    );
  }
}