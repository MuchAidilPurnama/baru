import 'package:belajar_flutter/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(),
                        ));
                  },
                  child: Text("Second Screen")),
              SizedBox(height: 18),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'third');
                  },
                  child: Container(
                    color: Colors.blue,
                    child: Text("Third Screen"),
                    )
                    ),
            ],
          ),
        ));
  }
}
