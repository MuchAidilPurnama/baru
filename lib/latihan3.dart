import 'package:flutter/material.dart';

class latihan3 extends StatelessWidget {
  const latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://i.redd.it/j2955rqs5xe91.jpg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          color: Colors.pinkAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRALh5A8GMTlhJqvKfaz6hBnD3iJBckIh8ZnOEP_N6KnfzF4dZiuNLPo80D0UplYxZ5hGM&usqp=CAU"),
              Text(
                  "Blackpink merupakan grup vokal wanita Korea yang \nmemiliki lagu dengan posisi tertinggi di Billboard Hot 100,", textAlign: TextAlign.justify,)
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Galery Black Pink"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network("https://i.scdn.co/image/ab6761610000e5ebc9690bc711d04b3d4fd4b87c", width: 150, height: 180,),
                  Image.network("https://hips.hearstapps.com/hmg-prod/images/gettyimages-1136588786.jpg?crop=1.00xw:0.670xh;0,0.0577xh&resize=640:*", width: 150, height: 180,),
                  Image.network("https://cdn.i-scmp.com/sites/default/files/styles/768x768/public/d8/images/canvas/2023/09/22/66262fa7-1eff-45bc-ae32-483943e60cc5_2cb9dab1.jpg?itok=WtevphAR&v=1695373170", width: 150, height: 180,),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}