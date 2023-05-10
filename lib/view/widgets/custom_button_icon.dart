import 'package:flutter/material.dart';

import '../../utility/theme.dart';

class CustomButtonIcon extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final Container icon;
  const CustomButtonIcon({
    super.key,
    required this.title,
    this.height = double.infinity,
    this.width = double.infinity,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadiusSmall),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
