import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/screens/home_screen/home_screen.dart';
import 'package:welivewithquran/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_image2.png'),
              fit: BoxFit.fill,
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                Get.offAll(()=>LoginScreen());
              },
                child: SvgPicture.asset("assets/icons/splash_button.svg")),
            SizedBox(height: 50.h,)
          ],
        ),
      ),
    );
  }
}
