import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_setting_item.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';
import 'package:welivewithquran/screens/contact_us/contact_us_screen.dart';

class SettingsScreen  extends StatelessWidget {
  const SettingsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 30.h),
                child: Center(
                  child: CustomText(
                    text: "الاعدادات",
                    fontSize: 24.sp,
                    color: mainColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  CustomSettingItem(
                    title: "المكتبة",
                    onPress: (){},
                    image: "assets/icons/library_icon.svg",
                  ),
                  SizedBox(height: 4,),
                  CustomSettingItem(
                    title: "التحميلات",
                    onPress: (){},
                    image: "assets/icons/down_arrow.svg",
                  ),
                  SizedBox(height: 4,),
                  CustomSettingItem(
                    title: "اتصل بنا",
                    onPress: (){
                      Get.to(()=>ContactUsScreen());
                    },
                    image: "assets/icons/mobile.svg",
                  ),
                  SizedBox(height: 4,),
                  CustomSettingItem(
                    title: "مشاركة التطبيق",
                    onPress: (){},
                    image: "assets/icons/share.svg",
                  ),
                  SizedBox(height: 4,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Switch(
                            activeColor: blueColor,
                              value: true, onChanged: (value){}),
                          CustomText(
                            text: "تفعيل الاشعارات",
                            color: blueColor,
                            fontSize: 17.sp,

                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Switch(
                              activeColor: blueColor,
                              value: true, onChanged: (value){}),
                          CustomText(
                            text: "الوضع الليلي",
                            color: blueColor,
                            fontSize: 17.sp,

                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),
                  CustomSettingItem(
                    image: "assets/icons/exit.svg",
                    title: "خروج",
                    onPress: (){
                      logoutDialog(context);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  logoutDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return Dialog(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: blueColor)
        ),
        child: Container(
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(15)
          ),
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: "هل تريد الخروج من التطبيق ؟",
                fontSize: 17.sp,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: CustomText(
                        text: "نعم",
                        color: blueColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 2),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: CustomText(
                        text: "لا",
                        color: blueColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
