import 'package:flutter/material.dart';
import '../../../utility/theme.dart';
import '../../../view/widgets/pertolongan_cepat_item.dart';

// ignore: must_be_immutable
class HomeDitanganiPage extends StatelessWidget {
  HomeDitanganiPage({super.key});

  List<Map> tempData = [
    {
      'lokasi': 'Jalan Tukad Yeh Aya',
      'kategori': 'ambulans',
    },
    {
      'lokasi': 'Jalan Danau Poso',
      'kategori': 'kecelakaan',
    },
    {
      'lokasi': 'Jalan Danau Tempe',
      'kategori': 'kebakaran',
    },
    {
      'lokasi': 'Jalan Tukad Balian',
      'kategori': 'banjir',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempData.length,
      itemBuilder: (context, index) {
        return PertolonganCepatItem(
          location: tempData[index]["lokasi"],
          titleButton: 'Selesai',
          status: 'ditangani',
          onTapAction: () {},
          onTapLocation: () {},
          kategori: tempData[index]["kategori"],
        );
      },
    );
  }
}
