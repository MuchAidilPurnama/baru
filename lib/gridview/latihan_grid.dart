import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  @override
  var data = 1;
  var color = 0;
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: 450,
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              26,
              (index) => Container(
                child: Card(
                  color: Colors.amber,
                  child: Center(
                      child: Text("${String.fromCharCode(64 + data++)}")),
                ),
              ),
            ),
          ),
        ),
         GridView.count(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          crossAxisCount: 1,
          children: [
        Container(
          color: Colors.pink,
          child: Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
        ),
         Container(
          color: Colors.purple,
          child: Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
        ),
         Container(
          color: Colors.orange,
          child: Center(
            child: FlutterLogo(
              size: 300,
           )
              ),
            ),
          ],
        ),
      ],
    );
  }
}
