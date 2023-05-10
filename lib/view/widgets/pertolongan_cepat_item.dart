import 'package:flutter/material.dart';
import '../../utility/theme.dart';
import 'custom_button_icon.dart';

class PertolonganCepatItem extends StatelessWidget {
  final String location;
  final String status;
  final String titleButton;
  final String kategori;
  final Function() onTapAction;
  final Function() onTapLocation;
  const PertolonganCepatItem({
    super.key,
    required this.location,
    required this.status,
    required this.onTapAction,
    required this.onTapLocation,
    required this.kategori,
    required this.titleButton,
  });
  String _iconKategori() {
    switch (kategori) {
      case 'kebakaran':
        return 'assets/icon/icon_fire.png';
      case 'banjir':
        return 'assets/icon/icon_flood.png';
      case 'ambulans':
        return 'assets/icon/icon_ambulans.png';
      case 'kecelakaan':
        return 'assets/icon/icon_crash.png';
      default:
        return 'assets/img/img_logo_bpbd.png';
    }
  }

  String _imgKategori() {
    switch (kategori) {
      case 'kebakaran':
        return 'assets/img/img_kategori_kebakaran.jpg';
      case 'banjir':
        return 'assets/img/img_kategori_banjir.jpg';
      case 'ambulans':
        return 'assets/img/img_kategori_ambulance.jpg';
      case 'kecelakaan':
        return 'assets/img/img_kategori_kecelakaan.jpg';
      default:
        return 'assets/img/img_logo_bpbd.png';
    }
  }

  double sizeButtonCenter() {
    return status == 'selesai' ? 140 : 115;
  }

  @override
  Widget build(BuildContext context) {
    Widget contentData() {
      // NOTE: UI Button Center
      Widget centerData() {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 29,
            bottom: 64,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonIcon(
                title: titleButton,
                width: sizeButtonCenter(),
                height: 37,
                color: kPrimaryColor,
                fontSize: sizeButton,
                fontWeight: medium,
                onPressed: onTapAction,
                icon: Container(
                  height: 18,
                  width: 18,
                  margin: const EdgeInsets.only(left: 8),
                  child: Image.asset(
                    _iconKategori(),
                    color: kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        );
      }

      // NOTE: Bottom Data
      Widget bottomData() {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 44,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor.withOpacity(0.75),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(defaultRadius),
                  bottomRight: Radius.circular(defaultRadius)),
            ),
            child: Row(
              children: [
                // NOTE: Icon Alamat
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(
                    left: defaultMarginSmall,
                    right: defaultMarginSmall,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/icon_location.png',
                      ),
                    ),
                  ),
                ),
                // NOTE: Nama Alamat
                Expanded(
                  child: Text(
                    location,
                    style: blackTextStyle,
                  ),
                ),
                // NOTE: Button Lihat Lokasi
                CustomButtonIcon(
                  title: 'Lihat Lokasi ',
                  height: 30,
                  width: 115,
                  color: kRedColor,
                  fontSize: sizeButtonSmall,
                  fontWeight: medium,
                  onPressed: onTapAction,
                  margin: EdgeInsets.only(right: defaultMargin),
                  icon: Container(
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon/icon_maps.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return Stack(
        children: [
          centerData(),
          bottomData(),
        ],
      );
    }

    return Container(
      height: 129,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(_imgKategori()),
        ),
      ),
      child: contentData(),
    );
  }
}
