import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeProvider {
  // *** SIZES ***
  static double get appTitleHeight => 32;

  // *** COLORS ***
  static Color get background => const Color(0xFF1C1F29);
  static Color get lightBackground => const Color(0xFF272E37);
  static Color get primary => const Color(0xFF737A8B);
  static Color get secondary => const Color(0xFF363A46);

  static Color get mainTextColor => Colors.white;

  // *** FONTS ***
  static TextStyle get font => GoogleFonts.montserrat();

  static TextStyle get bodyText2 => font.copyWith(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: mainTextColor,
      );

  static TextStyle get headline6 => font.copyWith(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: mainTextColor,
      );

  static TextStyle get caption => font.copyWith(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: primary,
      );

  /// Main theme data of app
  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        primaryColor: primary,
        backgroundColor: background,
        scaffoldBackgroundColor: background,
        fontFamily: font.fontFamily,
        colorScheme: ColorScheme.dark(
          secondary: secondary,
        ),
        textTheme: TextTheme(
          bodyText2: bodyText2,
          headline6: headline6,
          caption: caption,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: lightBackground,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        ),
      );
}
