import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;


    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: widthScreen/heightScreen,
      children:  [
        Container(
          color: Colors.yellowAccent,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              "2",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.brown,
          child: Center(
            child: Text(
              "3",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              "4",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ],
    );
  }
}
