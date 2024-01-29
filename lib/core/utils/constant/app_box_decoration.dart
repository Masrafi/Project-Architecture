import 'package:flutter/material.dart';

class AppBoxDecoration {  // Container
  static final commonDecoration = BoxDecoration(  // decoration: AppBoxDecoration.commonDecoration,
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 12,
        )
      ]);

  static final customButtonDecoration = BoxDecoration(  // decoration: AppBoxDecoration.customButtonDecoration,
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 12,
        )
      ]);
}
