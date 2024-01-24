
import 'package:flutter/material.dart';

class LatihanList extends StatelessWidget {
  LatihanList({super.key});
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<String> image = <String>[
    
    "https://static.promediateknologi.id/crop/0x0:0x0/x/photo/2023/04/16/BLACKPINK-Encore-Concerts-4201449853.jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8g8Xz6IZg9TXmOScMbosp_IbmMGHu2diFhQ&usqp=CAU",
    "https://akcdn.detik.net.id/visual/2023/03/14/blackpink-3_43.jpeg?w=360&q=90",
    "https://i.ytimg.com/vi/KxgO5qlmxW4/maxresdefault.jpg",
  ];
  final List<String> image2 = <String>[
    "https://awsimages.detik.net.id/community/media/visual/2022/08/09/lisa-blackpink-diduga-pakai-wig-1_43.jpeg?w=1200",
    "https://asset.kompas.com/crops/IqvxMA6wuduz6i0-hs4ziNUqE80=/0x170:1080x890/750x500/data/photo/2022/03/08/62277f10ce7f7.jpg",
    "https://akcdn.detik.net.id/visual/2023/08/11/jisoo-blackpink-3_43.jpeg?w=650&q=90",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe20NbGaYh6MpOLHGXuuk-FobedSECqxByww&usqp=CAU",
    "https://static1.personality-database.com/profile_images/076e4b0ff49c4d658afe6be1371a02fd.png"
  ];

  final List<String> nama = <String>[
    "Lisa ",
    "Jennie Kim",
    "Kim Ji-soo",
    "Rosé",
    "Supra"
  ];

  final List<String> nama1 = <String>[

    "Jadwal Konser BlackPink",
    "Member Member BlackPink",
    "BlackPink Konser",
    "Album Lagu BlackPink"
  ];
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://www.kpoplover.it/wp-content/uploads/2020/10/1-SymUTw.jpeg"),
                  fit: BoxFit.fill)),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 200,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${nama1[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Image.network(
                        '${image[index]}',
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 170,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(3),
              itemCount: image2.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 100,
                    width: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            '${image2[index]}',
                            height: 100,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Text(' ${nama[index]}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))
                      ],
                    ),
                    // child: Center(child: Text('Entry ${entries[index]}')),
                  ),
                );
              }),
        ),
      ],
    );
  }
}