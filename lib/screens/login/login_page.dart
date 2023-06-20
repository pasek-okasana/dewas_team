import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/config/src/src_img.dart';
import '../../core/config/theme/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_field_suffix.dart';
import 'controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final ControllerLogin = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    Widget butttonList() {
      return Column(
        children: [
          CustomButton(
            name: 'Login',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            margin: const EdgeInsets.only(top: 40),
            color: primaryColor,
          ),
          CustomButton(
            name: 'Register',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            margin: const EdgeInsets.only(top: 16),
            color: greyAccentColor,
            textColor: Colors.black,
          ),
        ],
      );
    }

    Widget formLogin() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(sizeRadius),
        ),
        child: Column(
          children: [
            CustomTextField(
              title: 'Email Address',
              hintText: 'Your Email Address',
              controller: ControllerLogin.emailTextController,
            ),
            Obx(
              () => CustomTextFieldSuffix(
                title: 'Password',
                hintText: 'Your Password',
                controller: ControllerLogin.passwordTextController,
                isObsecure: ControllerLogin.isHidden.value,
                surfixIcon: IconButton(
                  onPressed: () => ControllerLogin.isHidden.toggle(),
                  icon: ControllerLogin.isHidden.value
                      ? const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget titleApps() {
      return Column(
        children: [
          Text(
            'Welcome Back',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'DEWaS Team',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ],
      );
    }

    Widget logo() {
      return Container(
        margin: const EdgeInsets.only(top: 24, bottom: 12),
        child: Image.asset(
          SrcImg.logo,
          width: 150,
          height: 150,
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                logo(),
                titleApps(),
                formLogin(),
                butttonList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
