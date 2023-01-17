import 'package:flutter/material.dart';

class CmsTextStyle {
  static TextStyle getCustomTextStyle({
    Color color = Colors.black,
    double fontSize = 15.0,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow? textOverflow,
    TextDecoration? underline,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      overflow: textOverflow,
      fontWeight: fontWeight,
      decoration: underline,
    );
  }
}
