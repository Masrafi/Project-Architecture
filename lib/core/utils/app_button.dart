import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.height, 
    required this.width,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
        color: Colors.green,
            border: Border.all(
              width: 1.0
            ),
            borderRadius: const BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
            ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
      ),
    );
  }
}