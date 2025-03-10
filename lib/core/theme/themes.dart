import 'package:book_box/core/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    datePickerTheme: const DatePickerThemeData(
      backgroundColor: Colors.white,
      headerHeadlineStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headerBackgroundColor: ColorApp.kDarkBackground,
      headerForegroundColor: Colors.white,
      dayOverlayColor: MaterialStatePropertyAll(ColorApp.kPrimaryColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade200,
      filled: true,
    ),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorApp.kPrimaryColor,
      background: Colors.white,
      onBackground: Colors.black,
      primary: ColorApp.kPrimaryColor,
      secondary: ColorApp.kSecondryColor,
      scrim: Colors.blueAccent,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
    ));

ThemeData darkTheme = ThemeData(
  bottomAppBarTheme: const BottomAppBarTheme(
    color: ColorApp.kDarkBackground,
  ),
  useMaterial3: true,
  datePickerTheme: const DatePickerThemeData(
    backgroundColor: Colors.white,
    headerHeadlineStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    headerBackgroundColor: Colors.black,
    headerForegroundColor: Colors.white,
    dayOverlayColor: MaterialStatePropertyAll(ColorApp.kPrimaryColor),
    inputDecorationTheme: InputDecorationTheme(
      activeIndicatorBorder: BorderSide(color: Colors.red, width: 2),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.grey.shade200,
    filled: true,
    border: const OutlineInputBorder(),
  ),
  scaffoldBackgroundColor: ColorApp.kDarkBackground,
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorApp.kPrimaryColor,
    background: Colors.black,
    secondary: ColorApp.kSecondryColor,
    onBackground: Colors.white,
    primary: ColorApp.kPrimaryColor,
    scrim: Colors.blueGrey.shade900,
  ),
);
