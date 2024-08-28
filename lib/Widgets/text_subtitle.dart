import 'package:flutter/material.dart';

class TextSubtitle extends StatelessWidget {
  const TextSubtitle({super.key, required this.label, this.fontSize = 13});
  final String label;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(fontSize: fontSize));
  }
}
