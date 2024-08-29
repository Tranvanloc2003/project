import 'package:flutter/material.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';

class CtgRoundedWidgets extends StatelessWidget {
  const CtgRoundedWidgets({super.key, required this.image, required this.name});
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 50, width: 50),
        const SizedBox(height: 5),
        TextSubtitle(
          label: name,
          fontSize: 14,
        ),
      ],
    );
  }
}
