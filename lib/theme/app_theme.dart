import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get data => ThemeData.from(
        colorScheme: ThemeData.light().colorScheme,
        textTheme: ThemeData(
          fontFamily: primaryFont,
        ).textTheme.copyWith(
              titleLarge: titleL,
            ),
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
        ),
      );

  final primaryFont = 'Open Sans';

  final double textSizeXS = 10;
  final double textSizeS = 12;
  final double textSizeM = 14;
  final double textSizeL = 16;
  final double textSizeXL = 18;
  final double textSizeXTL = 30;

  get titleL => TextStyle(
        fontFamily: primaryFont,
        fontSize: textSizeXTL,
        fontWeight: FontWeight.bold,
        letterSpacing: 10.0,
      );
}
