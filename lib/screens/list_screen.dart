import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:belajar_flutter/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListSeaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> SeaData = [
    {
      "nama": "Laut Jawa",
      "pulau": "Jawa",
      "image": "images/jawa.jpg",
      "desc": "awa adalah sebuah pulau di Indonesia yang terletak di kepulauan Sunda Besar dan merupakan pulau terluas ke-13 di dunia."
    },
    {
      "nama": "Laut Maluku",
      "pulau": "Samudra Pasifik",
      "image": "images/maluku.jpg",
      "desc": "Kepulauan Maluku adalah sekelompok pulau di Indonesia yang merupakan bagian dari Nusantara. Kepulauan Maluku terletak di lempeng Eurasia dan Pasifik."
    },
    {
      "nama": "Laut Sawu",
      "pulau": "Sumba",
      "image": "images/sawu.jpg",
      "desc": "Sawu (Sabu; Savu) adalah nama sebuah pulau yang terletak di sebelah selatan perairan Laut Sawu di sebelah timur Pulau Sumba dan sebelah barat Pulau Rote."
    },
    {
      "nama": "Laut Flores",
      "pulau": "Flores",
      "image": "images/flores.jpg",
      "desc": "Flores, dari bahasa Portugis yang berarti bunga, adalah sebuah pulau yang berada di wilayah administrasi Provinsi Nusa Tenggara Timur, Indonesia."
    },
    {
      "nama": "Raja Ampat",
      "pulau": "Papua",
      "image": "images/raja_ampat.png",
      "desc": "Kepulauan Raja Ampat berada di bagian paling barat Papua dan membentang di area seluas kurang lebih 4,6 juta hektar. Kabupaten Raja Ampat terdiri dari 4 pulau besar yaitu Pulau Waigeo, Batanta, Salawati dan Misool, dan 1.847 pulau-pulau kecil lainnya."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: SeaData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailSeaScreen(
                      nama: SeaData[index]["nama"],
                      pulau: SeaData[index]["pulau"],
                      image: SeaData[index]["image"],
                      desc: SeaData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${SeaData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${SeaData[index]["nama"]} - ${SeaData[index]["pulau"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
