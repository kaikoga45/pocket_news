import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _kLightPrimaryColor = Colors.white;
const Color _kLightSecondaryColor = Colors.black;

const Color _kDarkPrimaryColor = Colors.black;
const Color _kDarkSecondaryColor = Colors.white;

final Color _lightImportantFontColor = _kDarkPrimaryColor.withOpacity(0.85);
final Color _lightInformationFontColor = _kDarkPrimaryColor.withOpacity(0.60);

final Color _darkImportantFontColor = _kLightPrimaryColor.withOpacity(0.85);
final Color _darkInformationFontColor = _kLightPrimaryColor.withOpacity(0.60);

final TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.lora(
      fontSize: 102, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.lora(
      fontSize: 64, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.lora(fontSize: 51, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.lora(
      fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.lora(fontSize: 25, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.lora(
      fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.lora(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.lora(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.roboto(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.roboto(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.roboto(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

final ThemeData lightThemeData = ThemeData(
  primaryColor: _kLightPrimaryColor,
  // ignore: deprecated_member_use
  accentColor: _kLightSecondaryColor,
  scaffoldBackgroundColor: _kLightPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: _textTheme.apply(
    displayColor: _lightImportantFontColor,
    bodyColor: _lightInformationFontColor,
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    titleTextStyle:
        _textTheme.headline6!.apply(color: _lightImportantFontColor),
    color: _kLightPrimaryColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: _kDarkPrimaryColor,
    unselectedItemColor: Colors.grey,
    backgroundColor: _kLightPrimaryColor,
    type: BottomNavigationBarType.fixed,
  ),
);
