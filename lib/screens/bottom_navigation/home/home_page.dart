import 'package:flutter/material.dart';

import '../../../core/config/theme/theme.dart';
import '../home/tabbar_view/home_penanganan_page.dart';
import '../home/tabbar_view/home_ditangani_page.dart';
import '../home/tabbar_view/home_selesai_page.dart';
import '../../widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          labelColor: primaryColor,
          indicatorColor: primaryColor,
          unselectedLabelColor: greyColor,
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
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(CustomAppbar().heightAppBar()),
        child: CustomAppbar(title: ""),
      ),
      body: tabBarCustom(),
    );
  }
}
