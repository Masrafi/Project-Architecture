import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'app_text_style.dart';
import 'colors.dart';


class AppSnackBar extends StatelessWidget {
  const AppSnackBar({Key? key, required this.content, required this.title})
      : super(key: key);
  final String content;
  final String title;

  static showErrorNotification(
    BuildContext context,
    String content, {
    required String title,
  }) =>
      show(context, title, content);

  static show(
    BuildContext context,
    String title,
    String content,
  ) {
    showTopSnackBar(
      Overlay.of(context),
      AppSnackBar(
        content: content,
        title: title,
      ),
     
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: PRIMARY_COLOR.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 5,
              offset: const Offset(0, 2),
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title.isNotEmpty)
              Text(
                title,
                style: AppTextStyle.titleTextStyle().copyWith(fontSize: 16),
              ),
            Text(content),
          ],
        ),
      ),
    );
  }
}
