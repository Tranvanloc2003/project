import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static const THEME_STATUS = "THEME_STATUS";
  final _isDarkTheme = false.obs;
  bool get isDarkTheme => _isDarkTheme.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getThemeStatus();
  }

  Future<void> setDarkTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(THEME_STATUS, value);
    _isDarkTheme.value = value;
    Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> getThemeStatus() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _isDarkTheme.value = preferences.getBool(THEME_STATUS) ?? false;
    Get.changeThemeMode(_isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }
}
