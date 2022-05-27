import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/custom_widgets/custom_social_container.dart';
import 'package:welivewithquran/screens/home_screen/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      home: HomeScreen(),
    );
  }
}
