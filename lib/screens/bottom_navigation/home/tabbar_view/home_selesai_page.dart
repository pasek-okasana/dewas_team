import 'package:flutter/material.dart';
import '../../../../core/config/theme/theme.dart';
import '../../../widgets/pertolongan_cepat_item.dart';

// ignore: must_be_immutable
class HomeSelesaiPage extends StatelessWidget {
  HomeSelesaiPage({super.key});

  List<Map> tempData = [
    {
      'lokasi': 'Jalan Danau Tempe',
      'kategori': 'kebakaran',
    },
    {
      'lokasi': 'Jalan Danau Poso',
      'kategori': 'kecelakaan',
    },
    {
      'lokasi': 'Jalan Tukad Balian',
      'kategori': 'banjir',
    },
    {
      'lokasi': 'Jalan Tukad Yeh Aya',
      'kategori': 'ambulans',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempData.length,
      itemBuilder: (context, index) {
        return PertolonganCepatItem(
          location: tempData[index]["lokasi"],
          titleButton: tempData[index]["kategori"],
          status: 'selesai',
          onTapAction: () {},
          onTapLocation: () {},
          kategori: tempData[index]["kategori"],
        );
      },
    );
  }
}
