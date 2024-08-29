import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_appbanhang/Controllers/theme_controller.dart';
import 'package:project_appbanhang/Screens/profile_screen.dart';
import 'package:project_appbanhang/const/theme_data.dart';

import 'Screens/home_screen.dart';
import 'bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Styles.themeData(false, context),
      darkTheme: Styles.themeData(true, context),
      // home: HomeScreen(),
      home: const BottomBar(),
    );
  }
}
