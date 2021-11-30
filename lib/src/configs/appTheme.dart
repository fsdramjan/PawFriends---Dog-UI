import 'package:flutter/material.dart';

import 'appColors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
