import 'package:flutter/material.dart';

import '../../utility/theme.dart';
import 'home/home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(
      child: Text(
        'Index 1: Pencarian',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Berita',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: Profil',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Beranda',
            backgroundColor: kWhiteColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Pencarian',
            backgroundColor: kWhiteColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.newspaper),
            label: 'Berita',
            backgroundColor: kWhiteColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profil',
            backgroundColor: kWhiteColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGreyColor,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
