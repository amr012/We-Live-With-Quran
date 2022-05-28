import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({Key? key}) : super(key: key);

   List images = [
     "assets/images/sura_image3.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image3.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image3.png",
   ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: SvgPicture.asset("assets/icons/back_arrow.svg")),
            )
          ],
          title: Text("تفاصيل",style: TextStyle(fontSize: 24.sp,color: mainColor,
              fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_background1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70,),
                Container(
                  height: 320.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                  text:  "سورة النساء",
                                    color: mainColor,
                                    fontSize: 24.sp,
                                  ),
                                  Image.asset("assets/images/sura_image3.png",fit: BoxFit.fill,)
                                ],
                              ),),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText(
                                          text: "عددالصفحات:",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                        SizedBox(width: 5,),
                                        CustomText(
                                          text: "130",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomText(
                                          text: "المؤلف:",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                        SizedBox(width: 5,),
                                        CustomText(
                                          text: "د. فاطمة بنت عمر",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomText(
                                          text: "التصنيف:",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                        SizedBox(width: 5,),
                                        CustomText(
                                          text: "تفسير القرآن",
                                          fontSize: 16.sp,
                                          color: mainColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "تحميل الكتاب",
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "قراءة الكتاب",
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical: 25),
                  child: Divider(
                    thickness: 1,
                    color: blueColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "اقرأ ايضا",
                        fontSize: 18.sp,
                        color: mainColor,
                      ),
                      Icon(Icons.more_horiz_outlined,color: mainColor,)
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                  height: 260.h ,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                      itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 180.h,
                          width : 150.w,
                          child: Image.asset(images[index],fit: BoxFit.fill,),
                        ),
                        Text("د. فاطمة بنت عمر نصيف",style: TextStyle(color: blueColor,
                            fontSize: 12.sp),),
                        Text("سورة الفاتحة",style: TextStyle(color: mainColor,
                            fontSize: 16.sp),),
                      ],
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
