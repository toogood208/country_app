import 'package:country_app/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ThemeServic {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      iconTheme: const IconThemeData(
        color: lightSecondaryColor,
      ),
      scaffoldBackgroundColor: lightBackgroundColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFFDFDFC),
          backgroundColor: logoDotColor, // foreground (text) color
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: lightBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: lightSecondaryColor,
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: lightSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 27.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 22.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline6: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w300,
        ),
        caption: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        overline: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: lightSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.light().copyWith(
      // useMaterial3: true,
      iconTheme: const IconThemeData(
        color: darkSecondaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFF2F4F7),
          backgroundColor:
              logoDotColor.withOpacity(0.8), // foreground (text) color
        ),
      ),
      scaffoldBackgroundColor: darkBackgroundColor,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: darkBackgroundColor,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontSize: 27.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 22.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline5: TextStyle(
          fontSize: 18.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        headline6: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.normal,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w300,
        ),
        caption: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
        overline: TextStyle(
          fontSize: 12.0,
          fontFamily: 'Axiforma',
          color: darkSecondaryColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
