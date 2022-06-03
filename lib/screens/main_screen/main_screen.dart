import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';
import 'package:welivewithquran/screens/details/details_screen.dart';

class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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

   int currentPage = 0;
   TextEditingController searchController = TextEditingController();
   String selectedSura = "الفاتحة";

   List suraList = ["الفاتحة", "البقرة", "يوسف", "الكهف"];


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
                    onChanged: (v){
                      setState(() {
                      });
                    },
                    controller: searchController,
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
          switchWidget()

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

   searchWidget(){
    return Column(
      children: [
        SizedBox(height: 15.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,),
          child: Row(
            children: [
              Radio(value: false, groupValue: true, onChanged: (value){}),
              SizedBox(width: 5,),
              CustomText(
                text: "بحث فى الكل",
                fontSize: 18.sp,
                color: mainColor,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,),
          child: Row(
            children: [
              Radio(value: true, groupValue: true, onChanged: (value){}),
              SizedBox(width: 5.w,),
              CustomText(
                text: "بحث فى الكل",
                fontSize: 18.sp,
                color: mainColor,
              ),
              SizedBox(width: 20.w,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff305F72),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    //hint:'',
                    dropdownColor: Color(0xff305F72),
                    icon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 30.w),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      color: Colors.white,
                    ),
                    value: selectedSura,
                    onChanged: (newValue) {
                      setState(() {
                        selectedSura = newValue!;
                      });
                    },
                    items:
                    suraList.map<DropdownMenuItem<String>>((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(
                          valueItem,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.0.h ),
          child: Container(
            height: 40.h,
            width: 190.w,
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: CustomText(
                text: "بحث",
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
          ),
        )

      ],
    );
   }
   mainWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
          child: SizedBox(
            height: 170.h,
            width: double.infinity,
            child:  CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                onPageChanged: (page,reason){
                  setState(() {
                    print(page);
                    currentPage = page;
                  });
                },
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
        Center(
          child: Container(
            height: 15.h,
            width: 110.w,
            child: ListView.builder(
              itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 2.0.w),
                child: CircleAvatar(radius: 8.h,
                backgroundColor: currentPage == index ? mainColor : blueColor ,),
              );
            }),
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
    );
   }
  Widget switchWidget(){
      if(searchController.text.isNotEmpty){
        return searchWidget();
      }else{
        return mainWidget();
      }
   }
}
