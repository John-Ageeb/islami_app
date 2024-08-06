import 'package:flutter/material.dart';

import '../utilities/app_assets.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currantTheme = ThemeMode.light;

  set newTheme(ThemeMode themeMode) {
    currantTheme = themeMode;
    notifyListeners();
  }

  bool get isDarkThemeEnabled => currantTheme == ThemeMode.dark;

  String get mainBackground =>
      isDarkThemeEnabled ? AppAssets.backgroundDark : AppAssets.background;
}
