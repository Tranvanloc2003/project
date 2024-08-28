import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Provider"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => SwitchListTile(
                title: Text(themeController.isDarkTheme ? "Dark" : "Light"),
                value: themeController.isDarkTheme,
                onChanged: (value) {
                  themeController.setDarkTheme(value);
                })),
          ],
        ),
      ),
    );
  }
}
