import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_social_container.dart';
import 'package:welivewithquran/screens/home_screen/home_screen.dart';
import 'package:welivewithquran/screens/test_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 85.h,
        actions: [
          // SvgPicture.asset("assets/icons/appbar_icon.svg")
        ],
        // leading: Icon(Icons.list_outlined,color: mainColor,size: 30.h),
        title: Text("لنحيا بالقران",style: TextStyle(fontSize: 24.sp,color: mainColor,
            fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFEAF9FF),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 40.h,horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical:5),
                        child: MaterialButton(
                          onPressed: (){
                            Get.offAll(()=>HomeScreen());

                          },
                            child: Text("تخطى",style: TextStyle(fontSize: 20.sp,color: Color(0xff365865)),)),
                      ),
                    ],
                  ),
                  Text("تسجيل الدخول",style: TextStyle(fontSize: 25.sp,color: Color(0xff365865,),fontWeight: FontWeight.bold),),
                  SizedBox(height: 20.h,),

                  CustomSocialContainer(title: "تسجيل الدخول عبر فيسبوك",
                    containerColor: Color(0xff507DC0),
                    onTap: (){
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomSocialContainer(title: "تسجيل الدخول عبر تويتر",
                      containerColor: Color(0xff1EA1F1),
                      onTap: (){
                        Get.to(()=>TestScreen());

                      },
                    ),
                  ),
                  CustomSocialContainer(title: "تسجيل الدخول عبر جوجل",
                    containerColor: Color(0xffDC3445),
                    onTap: (){
                      Get.to(()=>TestScreen());

                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 15),
                    child: Divider(
                      color: Color(0xffA1C3CF),
                      thickness: 2,
                    ),
                  ),
                  Text("أو",style: TextStyle(fontSize: 25.sp,color: Color(0xff365865,),fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315F70))
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 45.h,
                            width: 45.w,
                            child: Icon(Icons.person_outline,color: Color(0xff315F70),),
                            color: Color(0xffECEAEB),),
                          Expanded(child: TextFormField(

                            decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text("أسم المستخدم",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff315F70),fontSize: 16.sp),),
                                ),
                                border: InputBorder.none
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                    child: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315F70))
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 45.h,
                            width: 45.w,
                            child: Icon(Icons.lock,color: Color(0xff315F70),),
                            color: Color(0xffECEAEB),),
                          Expanded(child: TextFormField(

                            decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text("كلمة المرور",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff315F70),fontSize: 16.sp),),
                                ),
                                border: InputBorder.none
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  CustomSocialContainer(title: "تسجيل الدخول",
                    containerColor: Color(0xff315F70),
                    onTap: (){
                      Get.to(()=>TestScreen());

                    },
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ليس لديك حساب؟",
                          style: TextStyle(fontSize: 18.sp,color: Color(0xff315F70),fontWeight: FontWeight.w600)),
                      SizedBox(width: 15,),
                      Text("سجل الان!",
                          style: TextStyle(fontSize: 18.sp,color: Color(0xff7FB0C1),fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 20.h,)
                ],
              ),

            ),
          ),
        ),
      ),

    );
  }
}
