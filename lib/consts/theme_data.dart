import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(
    bool isDarkTheme,
    BuildContext context,
  ) {
    return ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor:
          isDarkTheme ? const Color(0xFF00001A) : Colors.white,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? const Color(0xFF1A1F3C) : const Color(0xFFE8FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme
          ? const Color(0xFF0A0D2C)
          : const Color(
              (0xFFE8FDFD),
            ),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
          ),
    );
  }
}
