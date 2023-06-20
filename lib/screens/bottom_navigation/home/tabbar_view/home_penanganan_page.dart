import 'package:flutter/material.dart';
import '../../../../core/config/theme/theme.dart';
import '../../../detail_emergency/detail_page.dart';
import '../../../widgets/pertolongan_cepat_item.dart';

// ignore: must_be_immutable
class HomePenangananPage extends StatelessWidget {
  HomePenangananPage({super.key});

  List<Map> tempData = [
    {
      'lokasi': 'Jalan Danau Tempe',
      'kategori': 'kebakaran',
      'image': 'assets/img/img_kategori_kebakaran.jpg',
      'jenis_keadaan': 'genting',
      'nama': 'Putu Pasek',
      'telepon': '081234432556',
      'keterangan': 'Kebakaran ruko lantai 2',
    },
    {
      'lokasi': 'Jalan Danau Poso',
      'kategori': 'kecelakaan',
      'image': 'assets/img/img_kategori_kecelakaan.jpg',
      'jenis_keadaan': 'genting',
      'nama': 'Kadek Oka',
      'telepon': '089123213334',
      'keterangan': 'Terjadi kecelakaan bule menabrak pohon',
    },
    {
      'lokasi': 'Jalan Tukad Balian',
      'kategori': 'banjir',
      'image': 'assets/img/img_kategori_banjir.jpg',
      'jenis_keadaan': 'genting',
      'nama': 'Komang Suka',
      'telepon': '088765664',
      'keterangan': 'Banjir seputaran jalan tukat balian karna selokan mampet',
    },
    {
      'lokasi': 'Jalan Tukad Yeh Aya',
      'kategori': 'ambulans',
      'image': 'assets/img/img_kategori_ambulance.jpg',
      'jenis_keadaan': 'genting',
      'nama': 'Ketut Sana',
      'telepon': '087765554556',
      'keterangan': 'Lansia tidak sadarkan diri ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempData.length,
      itemBuilder: (context, index) {
        return PertolonganCepatItem(
          location: tempData[index]["lokasi"],
          titleButton: 'Tangani',
          status: 'menunggu',
          onTapAction: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          data: tempData[index],
                        )));
          },
          onTapLocation: () {},
          kategori: tempData[index]["kategori"],
        );
      },
    );
  }
}
