import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  static TextStyle weekDayTextStyle() => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: DEFAULT_TEXT_COLOR,
      );
  static TextStyle regularSecondaryTextStyle({double fontSize = 16}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: DEFAULT_TEXT_COLOR,
      );

  
}
