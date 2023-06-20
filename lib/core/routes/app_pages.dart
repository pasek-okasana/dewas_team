import 'package:get/get.dart';

import '../../screens/bottom_navigation/bottom_navigation_page.dart';
import '../../screens/detail_emergency/bindings/detail_binding.dart';
import '../../screens/detail_emergency/detail_page.dart';
import '../../screens/bottom_navigation/bindings/bottom_binding.dart';
import '../../screens/login/bindings/login_binding.dart';
import '../../screens/login/login_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const BottomNavigationPage(),
      binding: BottomBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginPage(),
      binding: loginBinding(),
    ),
    GetPage(
      name: _Paths.detailEmergency,
      page: () => const DetailPage(),
      binding: DetailBinding(),
    ),
    // GetPage(
    //   name: _Paths.products,
    //   page: () => const ProductsView(),
    //   binding: ProductsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.detailProduct,
    //   page: () => const DetailProductView(),
    //   binding: DetailProductBinding(),
    // ),
  ];
}
