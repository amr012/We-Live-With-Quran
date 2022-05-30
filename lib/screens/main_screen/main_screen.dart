import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/screens/details/details_screen.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);

   List images = [
     "assets/images/sura_image3.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image3.png",
     "assets/images/sura_image2.png",
     "assets/images/sura_image3.png",
     "assets/images/sura_image2.png",
   ];

   List<Widget> carouselImages = [
     Image.asset("assets/images/sura_image3.png"),
     Image.asset("assets/images/sura_image2.png"),
     Image.asset("assets/images/sura_image3.png"),
     Image.asset("assets/images/sura_image2.png"),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 55.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "أبحث هنا",
                        hintStyle: TextStyle(fontSize: 16.sp),
                        suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
              child: SizedBox(
                height: 170.h,
                width: double.infinity,
                child:  CarouselSlider.builder(
                  itemCount: images.length,
                  options: CarouselOptions(
                    viewportFraction: .3,
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  itemBuilder: (context, index, realIdx) {
                    return Container(
                      child: Center(
                          child: Image.asset(images[index],
                              fit: BoxFit.fill, )),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8),
              child: Text("الاقسام",style: TextStyle(fontSize: 24.sp,color: mainColor,fontWeight: FontWeight.w700),),
            ),
            SizedBox(
              height: 45.h,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("القران الكريم",style: TextStyle(color: Colors.white,
                        fontSize: 15.sp),)),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
              child: Text("المضاف أخيراً",style: TextStyle(fontSize: 24.sp,color: mainColor,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,),
              child: SizedBox(
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              // Get.to(()=>DetailsScreen());
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Container(
                              width: 120.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(images[index]),
                                  )

                              ),
                            ),
                          ));
                    }),
              ),
            ),

          ],
        ),
      ),
    );
  }
   Route _createRoute() {
     return PageRouteBuilder(
       pageBuilder: (context, animation, secondaryAnimation) =>  DetailsScreen(),
       transitionsBuilder: (context, animation, secondaryAnimation, child) {
         const begin = Offset(1.0, 1.0);
         const end = Offset.zero;
         const curve = Curves.ease;

         var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

         return SlideTransition(
           position: animation.drive(tween),
           child: child,
         );
       },
     );
   }
}
