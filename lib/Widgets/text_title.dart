import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
      {super.key, required this.label, this.fontSize = 20, this.fontWeight});
  final String label;
  final double fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
