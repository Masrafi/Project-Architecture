import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  static TextStyle weekDayTextStyle() => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: DEFAULT_TEXT_COLOR,
      );

  static TextStyle secondaryTextStyle() => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle overLineTextStyle() => const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w300, color: DEFAULT_TEXT_COLOR);

  static TextStyle regularTextStyle(                                   // // style: AppTextStyle.regularTextStyle(color: Colors.white),
          {double fontSize = 14, Color color = DEFAULT_TEXT_COLOR}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle errorTextStyle() => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ERROR_COLOR,
      );

  static TextStyle primaryTextStyle() => const TextStyle( // style: AppTextStyle.primaryTextStyle(),
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: DEFAULT_TEXT_COLOR,
      );

  static TextStyle calendarTextStyle() => const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: PRIMARY_COLOR,
      );

  static TextStyle mediumTextStyle({double fontSize = 16}) => TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: DEFAULT_TEXT_COLOR,
      );

  static TextStyle inputTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle defaultTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: DEFAULT_TEXT_COLOR,
      );

  static TextStyle disableTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: DISABLE_TEXT_COLOR,
      );

  static TextStyle headline6TextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle buttonTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle highLightTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: HIGHLIGHT_COLOR,
      );

  static TextStyle hintTextStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: HEATHER_COLOR,
      );

  static TextStyle labelTextStyle() => const TextStyle(
      color: DEFAULT_TEXT_COLOR, fontSize: 20, fontWeight: FontWeight.w700);

  static TextStyle titleTextStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: DEFAULT_TEXT_COLOR,
      );

  static TextStyle toolbarTextStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: HIGHLIGHT_COLOR,
      );

  static TextStyle largeTitleTextStyle() => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: HIGHLIGHT_COLOR,
      );

  static TextStyle regularSecondaryTextStyle({double fontSize = 16}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle mediumSecondaryTextStyle({double fontSize = 16}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle boldSecondaryTextStyle({double fontSize = 16}) => TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: SECONDARY_TEXT_COLOR,
      );

  static TextStyle thirdInputHintTextStyle() => const TextStyle(
        color: HEATHER_COLOR,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      );
}
