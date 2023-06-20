import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_pages.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Qr Code Products",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
    // return MaterialApp(
    //   title: 'DEWaS Team Apps',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     appBarTheme: AppBarTheme(
    //       systemOverlayStyle: SystemUiOverlayStyle(
    //         // Status bar color
    //         statusBarColor: kPrimaryColor,
    //         // Status bar brightness (optional)
    //         statusBarIconBrightness: Brightness.light, // For Android (icons)
    //         statusBarBrightness: Brightness.dark, // For iOS (icons)
    //       ),
    //     ),
    //   ),
    //   home: const BottomNavigationPage(),
    // );
  }
}
