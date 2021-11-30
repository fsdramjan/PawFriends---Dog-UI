import 'package:dog_profile_ui/src/configs/appTheme.dart';
import 'package:dog_profile_ui/src/pages/dogProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: DogProfilePage(),
    );
  }
}
