import 'package:flutter/material.dart';

class BelajarListBasic extends StatelessWidget {
  const BelajarListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Colors.blueAccent,
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 300,
              color: Colors.deepOrange,
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 300,
              color: Colors.green,
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 300,
              color: Colors.purple,
            ),
        ],
      )
    );
  }
}