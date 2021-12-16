import 'package:cryptoinnovate/data/repositories/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeManager {
  final _sharedPreferences = LocalPreferences();

  Future<void> changeTheme({required bool isDarkMode}) async {
    // Before change the theme we store the preference
    await _sharedPreferences.storeData<bool>('DarkTheme', isDarkMode);
    // We change the subject accordingly
    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
  }

  // If there isn't any stored preference we set it to the current mode
  Future<bool> get storedTheme async =>
      await _sharedPreferences.retrieveData<bool>('DarkTheme') ??
      Get.isDarkMode;
}
