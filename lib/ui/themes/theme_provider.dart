import 'package:cryptoinnovate/ui/themes/paletter.dart';
import "package:flutter/material.dart";

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Mythemes {
  // dark theme
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Palette.darkbg,
    colorScheme: ColorScheme.dark(),
  );

// light theme
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Palette.whitebg,
    colorScheme: ColorScheme.light(),
  );
}
