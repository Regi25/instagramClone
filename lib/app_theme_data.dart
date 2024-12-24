import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


final TextTheme _googleFontRobotoTheme = GoogleFonts.robotoTextTheme();
final OutlinedButtonThemeData _outlinedButtonTheme = OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
                color: Color(0xFF0095F6)
            )
        )
    );

final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF0095F6),
);

final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF334155),
  brightness: Brightness.dark,
);

class AppThemeData {
  final ThemeData _lightThemeData = ThemeData(
    colorScheme: _lightColorScheme,
    textTheme: _googleFontRobotoTheme,
    outlinedButtonTheme: _outlinedButtonTheme
  );

final ThemeData _darkThemeData = ThemeData(
  colorScheme: _darkColorScheme,
    textTheme: _googleFontRobotoTheme,
    outlinedButtonTheme: _outlinedButtonTheme
);

light() {
  return _lightThemeData;
}
dark() {
  return _darkThemeData;
}
}