import 'package:flutter/material.dart';
import 'package:alsharqapp/core/constant/color.dart';
ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      // ignore: deprecated_member_use
      headline1:  TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppcolorApp.black),
      // ignore: deprecated_member_use
      headline2:  TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppcolorApp.black),
      // ignore: deprecated_member_use
      bodyText1:  TextStyle(
          height: 2,
          color: AppcolorApp.qrey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      // ignore: deprecated_member_use
      bodyText2:  TextStyle(height: 2, color: AppcolorApp.primaryColor, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      // ignore: deprecated_member_use
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 10, color: AppcolorApp.black),
      // ignore: deprecated_member_use
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppcolorApp.black),
      // ignore: deprecated_member_use
      bodyText1: TextStyle(
          height: 2,
          color: AppcolorApp.qrey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      // ignore: deprecated_member_use
      bodyText2: TextStyle(height: 2, color: AppcolorApp.primaryColor, fontSize: 14)),
  primarySwatch: Colors.blue,
);