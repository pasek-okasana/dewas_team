import 'package:flutter/material.dart';
import '../../core/config/theme/theme.dart';
import '../widgets/item_detail_info.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class DetailPage extends StatelessWidget {
  final Map? data;
  const DetailPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    Widget contentData() {
      Widget cardData() {
        return Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: whiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: Judul
              Text(
                'Details Informasi',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              // NOTE: Info Utama
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            data!['image'],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data!['kategori'],
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data!['lokasi'],
                            style: blackTextStyle.copyWith(
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // NOTE: Detail Info
              ItemDetailInfo(
                title: "Jenis Keadaan",
                valueText: data!['jenis_keadaan'],
                valueColor: redColor,
              ),
              ItemDetailInfo(
                title: "Nama",
                valueText: data!['nama'],
                valueColor: blackColor,
              ),
              ItemDetailInfo(
                title: "Telepon",
                valueText: data!['telepon'],
                valueColor: blackColor,
              ),
            ],
          ),
        );
      }

      Widget cardKeterangan() {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: whiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: Judul
              Text(
                'Keterangan Informasi',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              // NOTE: Info Utama
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Center(
                  child: Text(
                    data!['keterangan'],
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        children: [
          // NOTE: CARD
          cardData(),
          // NOTE: CARD Keterangan
          cardKeterangan(),
          // NOTE : TANGANI
          CustomButton(
            name: 'Tangani',
            onPressed: () {},
            color: primaryColor,
            margin: const EdgeInsets.only(top: 30),
          ),
          // NOTE LOKASI
          CustomButton(
            name: 'Cek Lokasi',
            onPressed: () {},
            color: redColor,
            margin: const EdgeInsets.only(top: 8),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(CustomAppbar().heightAppBar()),
        child: CustomAppbar(title: ""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: contentData(),
        ),
      ),
    );
  }
}
