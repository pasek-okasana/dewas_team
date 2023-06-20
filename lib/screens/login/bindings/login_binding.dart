import 'package:get/get.dart';

import '../controller/login_controller.dart';

// import '../controllers/home_controller.dart';

class loginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
