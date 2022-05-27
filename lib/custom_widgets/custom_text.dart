import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final Alignment? alignment;
  final int? maxLines;

  CustomText(
      {this.text = "",
        this.maxLines,
        this.fontSize = 18,
        this.color = Colors.black,
        this.fontWeight,
        this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        maxLines: maxLines,
        style:
        TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
      ),
    );
  }
}
