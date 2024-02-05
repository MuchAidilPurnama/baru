import 'package:flutter/material.dart';

import '../helpers/size_helper.dart';

class DetailSeaScreen extends StatelessWidget {
  final String nama;
  final String pulau;
  final String image;
  final String desc;

  DetailSeaScreen(
      {required this.nama,
      required this.pulau,
      required this.image,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sea Detail"),
        backgroundColor: const Color.fromARGB(255, 79, 182, 234),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            Center(
              child: Text(
                "$nama - $pulau",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context) * 0.25,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: displayWidth(context) * 0.95,
                  height: 360,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.yellow,
                        Colors.black,
                        Colors.blue,
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "$desc",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
