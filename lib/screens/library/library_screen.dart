import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';
import 'package:welivewithquran/screens/details/details_screen.dart';

class LibraryScreen extends StatelessWidget {
   LibraryScreen({Key? key}) : super(key: key);
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/main_background1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 70,),
          CustomText(
            text: "المكتبة",
            fontSize: 24,
            color: mainColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .7
                  ),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("سورة الفاتحة",style: TextStyle(color: Colors.white,
                            fontSize: 16.sp),)),
                          ),
                          SizedBox(height: 5.h,),
                          Container(
                            height: 200.h,
                            width : 170.w,
                            child: Image.asset(images[index],fit: BoxFit.fill,),
                          ),
                        ],
                      ),
                    );

                  }),
            ),
          )
        ],
      ),
    );
  }
}
