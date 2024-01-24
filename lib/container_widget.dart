import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.purpleAccent, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
        color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(10)),

        child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(10)),

        child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
        color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        child: Container(

          
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration (
            image: DecorationImage (
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI05d0VUtdygXuHVKOxN-gnKCAsOu-1ZKN7Q&usqp=CAU"
              ),
              fit: BoxFit.fill
            )
          ),
        ),
        )
      )
      ),
      ),
    );
  }
}