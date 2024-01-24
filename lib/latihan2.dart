import 'package:flutter/material.dart';

class latihan2 extends StatelessWidget {
  const latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 250,
              decoration: BoxDecoration(
                color:Colors.green
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(color: Colors.amber),
                            margin: EdgeInsets.only(top: 100,left: 50, right: 50),
                          ),
                          Text("Gambar 1")
                        ],
                      ),
                        Column(
                         children: [
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(color: Colors.amber),
                            margin: EdgeInsets.only(top: 100,left: 50, right: 50),
                          ),
                          Text("Gambar 2")
                        ],
                      ),
                        Column(
                         children: [
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(color: Colors.amber),
                            margin:
                                EdgeInsets.only(top: 100, left: 50, right: 50),
                          ),
                          Text("Gambar 3")
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}