import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#2c3e50'),
    appBarTheme: AppBarTheme(
      backgroundColor: HexColor('#2c3e50'),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
