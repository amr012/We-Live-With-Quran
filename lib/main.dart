import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/custom_widgets/custom_social_container.dart';
import 'package:welivewithquran/screens/home_screen/home_screen.dart';
import 'package:welivewithquran/screens/splash/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  ScreenUtilInit(
      designSize: Size(390, 844),
      builder : (context,child)=> GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Locale("ar"),
        home: child,
      ),
      child: SplashScreen(),
    );
  }
}
