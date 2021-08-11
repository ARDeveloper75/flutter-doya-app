import 'package:doya_app/src/configs/appTheme.dart';
import 'package:doya_app/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.appTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
