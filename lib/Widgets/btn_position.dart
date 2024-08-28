import 'package:flutter/material.dart';
import 'package:project_appbanhang/Widgets/text_subtitle.dart';
import 'package:project_appbanhang/Widgets/text_title.dart';

class BtnPosition extends StatelessWidget {
  const BtnPosition(
      {super.key,
      required this.img,
      required this.label,
      required this.function});
  final String img;
  final String label;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(img),
      title: TextSubtitle(label: label),
    );
  }
}
