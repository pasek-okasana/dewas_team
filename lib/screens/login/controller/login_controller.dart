import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isHidden = true.obs;
  var isLoading = false.obs;

  final passwordTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  void onInit() {
    print(isHidden);
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passwordTextController.dispose();
    emailTextController.dispose();
    super.dispose();
  }
}
