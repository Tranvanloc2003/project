import 'package:flutter/material.dart';

import 'logo_widgets.dart';
import 'text_title.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.text,
    this.fontSize = 20,
  });
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Logo(),
      title: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
