import 'package:flutter/material.dart';

import '../../utility/theme.dart';
import '../home/tabbar_view/home_penanganan_page.dart';
import '../home/tabbar_view/home_ditangani_page.dart';
import '../home/tabbar_view/home_selesai_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      Widget flexibleSpace() {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/img/img_logo_bpbd.png'),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Denpasar',
                        style: blueTextStyle.copyWith(
                          fontSize: sizeHeading,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'DEWaS',
                        style: redTextStyle.copyWith(
                          fontSize: sizeHeading,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return AppBar(
        toolbarHeight: 115,
        flexibleSpace: flexibleSpace(),
        backgroundColor: kWhiteColor,
        elevation: 2,
      );
    }

    Widget tabBarCustom() {
      TabBar tabBar() {
        Widget tabTitle(String title) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 6,
            ),
            child: Text(
              title,
              style: tabTextStyle,
            ),
          );
        }

        return TabBar(
          labelColor: kPrimaryColor,
          indicatorColor: kPrimaryColor,
          unselectedLabelColor: kGreyColor,
          tabs: [
            tabTitle('Penanganan'),
            tabTitle('Ditangani'),
            tabTitle('Selesai'),
          ],
        );
      }

      TabBarView tabBarView() {
        return TabBarView(
          children: [
            HomePenangananPage(),
            HomeDitanganiPage(),
            HomeSelesaiPage(),
          ],
        );
      }

      return Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: DefaultTabController(
          length: 3, // length of tabs
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: tabBar(),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 254,
                margin: const EdgeInsets.only(top: 8),
                child: tabBarView(),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: tabBarCustom(),
    );
  }
}
