import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkThemeData {
  DarkThemeData._();
  static const _backgroundColor1 = Color(0XFF161D31);
  static const _backgroundColor2 = Color(0XFF222222);
  static const _progressColor = Color(0XFFFFFFFF);

  static const _textColor1 = Color(0XFFFFFFFF);
  static const _textColor2 = Color(0XFF4B4B4C);
  static const _textColor3 = Color(0XFF040508);
  static const _colorCard1 = Color(0XFFFFC702);

  static ThemeData theme() {
    return ThemeData(
      backgroundColor: _backgroundColor1,
      canvasColor: _backgroundColor2,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: _progressColor,
      ),
      cardColor: _colorCard1,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
          fontSize: 50,
          fontWeight: FontWeight.w700,
          color: _textColor1,
        ),
        displayMedium: GoogleFonts.roboto(
          fontSize: 40,
          fontWeight: FontWeight.w700,
          color: _textColor2,
        ),
        displaySmall: GoogleFonts.titilliumWeb(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: _textColor3,
        ),
      ),
    );
  }
}
