import 'package:dog_profile_ui/src/app.dart';
import 'package:dog_profile_ui/src/configs/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: primaryColor,
      systemNavigationBarColor: primaryColor,
    ),
  );

  runApp(App());
}
