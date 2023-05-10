import 'package:dewas_team/utility/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/bottom_navigation_page.dart';
// import 'view/home/home_page.dart';
// import 'utility/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEWaS Team Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: kPrimaryColor,
            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.light, // For Android (icons)
            statusBarBrightness: Brightness.dark, // For iOS (icons)
          ),
        ),
      ),
      home: const BottomNavigationPage(),
    );
  }
}
