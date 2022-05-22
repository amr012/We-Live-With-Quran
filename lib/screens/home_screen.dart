import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/custom_widgets/custom_social_container.dart';
import 'package:welivewithquran/screens/test_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff48B9E5),
        leading: Icon(Icons.list_outlined,color: Colors.black,),
        title: Text("لنحيا بالقران",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFEAF9FF),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
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
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
                        child: Text("تخطى",style: TextStyle(fontSize: 20,color: Color(0xff365865)),),
                      ),
                    ],
                  ),
                  Text("تسجيل الدخول",style: TextStyle(fontSize: 25,color: Color(0xff365865,),fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),

                  CustomSocialContainer(title: "تسجيل الدخول عبر فيسبوك",
                    containerColor: Color(0xff507DC0),
                    onTap: (){
                    Get.to(()=>TestScreen());
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
                  Text("أو",style: TextStyle(fontSize: 25,color: Color(0xff365865,),fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315F70))
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            child: Icon(Icons.person_outline,color: Color(0xff315F70),),
                            color: Color(0xffECEAEB),),
                          Expanded(child: TextFormField(

                            decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text("أسم المستخدم",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff315F70)),),
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
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff315F70))
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            child: Icon(Icons.lock,color: Color(0xff315F70),),
                            color: Color(0xffECEAEB),),
                          Expanded(child: TextFormField(

                            decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text("كلمة المرور",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff315F70)),),
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
                          style: TextStyle(fontSize: 18,color: Color(0xff315F70),fontWeight: FontWeight.w600)),
                      SizedBox(width: 15,),
                      Text("سجل الان!",
                          style: TextStyle(fontSize: 18,color: Color(0xff7FB0C1),fontWeight: FontWeight.w600)),

                    ],
                  ),

                ],
              ),

            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (index) {
            // checkCurrentIndex(index);
          },
          // selectedItemColor: mainColor,
          items: [
            BottomNavigationBarItem(
              label: "الرئيسية",
              icon: Icon(Icons.domain,color: Color(0xff305F71),),
              // activeIcon: SvgPicture.asset('assets/icons/explore_colored.svg',
            ),
            BottomNavigationBarItem(
              label: "المكتبة",
              icon: Icon(Icons.book,color: Color(0xff305F71),),
              // activeIcon: SvgPicture.asset('assets/icons/explore_colored.svg',
            ),
            BottomNavigationBarItem(
              label: "المفضلة",
              icon: Icon(Icons.bookmark,color: Color(0xff305F71),),
              // activeIcon: SvgPicture.asset('assets/icons/explore_colored.svg',
            ),
            BottomNavigationBarItem(
              label: "الاعدادات",
              icon: Icon(Icons.settings,color: Color(0xff305F71),),
              // activeIcon: SvgPicture.asset('assets/icons/explore_colored.svg',
            ),


          ]),

    );
  }
}
