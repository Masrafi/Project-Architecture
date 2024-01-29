import 'package:flutter/material.dart';
import 'app_text_style.dart';
import 'colors.dart';
import 'constant/value_constants.dart';

abstract class InputDecorationStyle {
  static const _borderSide = BorderSide(
    color: PRIMARY_COLOR,
    width: 0.5,
  );

  static final _border = OutlineInputBorder(
    borderSide: _borderSide,
    borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS),
  );

  static final _enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: DISABLE_COLOR,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS),
  );

  static get _focusBorder =>
      _border.copyWith(borderSide: _borderSide.copyWith(width: 1));

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      border: _border,
      focusedBorder: _focusBorder,
      enabledBorder: _enabledBorder,
      disabledBorder: _enabledBorder,
      focusColor: PRIMARY_COLOR,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      hintStyle: AppTextStyle.hintTextStyle());

  static const _underLineBorder = UnderlineInputBorder(borderSide: _borderSide);
  static final _focusUnderLineBorder = _underLineBorder.copyWith(
    borderSide: _borderSide.copyWith(width: 2),
  );
  static InputDecoration secondInputDecoration = InputDecoration(           // decoration: InputDecorationStyle.secondInputDecoration
      border: _underLineBorder,
      enabledBorder: _underLineBorder,
      focusedBorder: _focusUnderLineBorder,
      focusColor: PRIMARY_COLOR,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      hintStyle: AppTextStyle.hintTextStyle().copyWith(fontSize: 20));
}
