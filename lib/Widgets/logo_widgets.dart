import 'package:flutter/material.dart';

import '../const/app_constans.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(AppConstans.avatarImage),
        radius: 20,
      ),
    );
  }
}
