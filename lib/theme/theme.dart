import 'package:flutter/material.dart';
final darkTheme = ThemeData(
  dividerColor: Colors.white38,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  scaffoldBackgroundColor: Colors.black12,
  primarySwatch: Colors.yellow,
  appBarTheme: const AppBarTheme(
    elevation: 0,
      color: Colors.black12 ,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      )
  ),
  textTheme: TextTheme(
    bodyMedium:
    const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);