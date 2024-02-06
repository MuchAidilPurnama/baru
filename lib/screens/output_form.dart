import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jumlah, tglBerangkat, tujuan, tujuanImage;
  final double selectedtujuanHarga, totalHarga;
  OutputFormScreen(
      {Key? key,
      required this.nama,
      required this.jumlah,
      required this.tglBerangkat,
      required this.tujuan,
      required this.selectedtujuanHarga,
      required this.totalHarga,
      required this.tujuanImage,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Tiket Sea'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(tujuanImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama: $nama'),
                      Text('Jumlah Tiket: $jumlah'),
                      Text('Tanggal Pesan: $tglBerangkat'),
                      Text('Tujuan: $tujuan'),
                      Text('Harga per Tiket: $selectedtujuanHarga'),
                      Text('Total Harga: $totalHarga'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
