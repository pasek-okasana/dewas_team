import 'package:flutter/material.dart';

import '../../core/config/theme/theme.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color color;
  final Color textColor;
  final double radius;
  const CustomButton({
    super.key,
    required this.name,
    required this.onPressed,
    required this.color,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    this.radius = 20,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
