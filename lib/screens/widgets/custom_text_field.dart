import 'package:flutter/material.dart';

import '../../core/config/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 6),
          TextFormField(
              cursorColor: blackColor,
              controller: controller,
              decoration: InputDecoration(
                fillColor: greyAccentColor,
                filled: true,
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(sizeRadiusRounded),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(sizeRadiusRounded),
                    borderSide: BorderSide.none),
              )),
        ],
      ),
    );
  }
}
