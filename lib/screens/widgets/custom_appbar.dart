import 'package:flutter/material.dart';
import '../../core/config/src/src_img.dart';
import '../../core/config/theme/theme.dart';

class CustomAppbar extends StatelessWidget {
  String? _titleBar;
  CustomAppbar({super.key, title}) {
    _titleBar = title ?? "";
  }

  double heightAppBar() {
    return _myBar().preferredSize.height;
  }

  AppBar _myBar() {
    Widget flexibleSpace() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(SrcImg.logo),
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
      backgroundColor: whiteColor,
      elevation: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    // print("============== " + _titleBar!);
    return _myBar();
  }
}
