import 'package:flutter/material.dart';
import '../../../utility/theme.dart';
import '../../../view/widgets/pertolongan_cepat_item.dart';

// ignore: must_be_immutable
class HomePenangananPage extends StatelessWidget {
  HomePenangananPage({super.key});

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
          titleButton: 'Tangani',
          status: 'menunggu',
          onTapAction: () {},
          onTapLocation: () {},
          kategori: tempData[index]["kategori"],
        );
      },
    );
  }
}
