import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/constants.dart';

class AppFonts {
  static const koreanFont = 'NanumGothic';
  static const japaneseFont = 'NotoSerifJP';
  static const englishFont = 'Gilroy';
}

class AppThemings {
  static String locale = Get.locale!.toLanguageTag();
  static String fontFameily = locale.contains('ko')
      ? AppFonts.koreanFont
      : locale.contains('en')
          ? AppFonts.englishFont
          : AppFonts.englishFont;
  static TextStyle textStyle =
      TextStyle(color: Colors.white, fontFamily: fontFameily);

  static final dartTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    textTheme: ThemeData.light()
        .textTheme
        .apply(
          fontFamily: fontFameily,
          bodyColor: Colors.white,
          displayColor: Colors.amber,
          decorationColor: Colors.white,
        )
        .copyWith(
          displayLarge: textStyle,
          displayMedium: textStyle,
          displaySmall: textStyle,
          headlineLarge: textStyle,
          headlineMedium: textStyle,
          headlineSmall: textStyle,
          titleLarge: textStyle,
          titleMedium: textStyle,
          titleSmall: textStyle,
          bodyLarge: textStyle,
          bodyMedium: textStyle,
          bodySmall: textStyle,
          labelLarge: textStyle,
          labelMedium: textStyle,
          labelSmall: textStyle,
        ),
    inputDecorationTheme: kDefaultInputDecorationTheme,
    primaryTextTheme:
        ThemeData.light().textTheme.apply(fontFamily: fontFameily),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        fontFamily: fontFameily,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
