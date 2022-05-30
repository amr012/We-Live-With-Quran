import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_social_container.dart';
import 'package:welivewithquran/screens/favourite_screen/favourite_screen.dart';
import 'package:welivewithquran/screens/library/library_screen.dart';
import 'package:welivewithquran/screens/main_screen/main_screen.dart';
import 'package:welivewithquran/screens/settings/settings_screen.dart';
import 'package:welivewithquran/screens/test_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int currentIndex = 0;
   PageController _pageController = PageController();

   @override
   void initState() {
     super.initState();
     _pageController = PageController();
   }

   @override
   void dispose() {
     _pageController.dispose();
     super.dispose();
   }

   List<Widget> screen = [
     MainScreen(),
     LibraryScreen(),
     FavouriteScreen(),
     SettingsScreen(),
   ];

   checkCurrentIndex(int index) {
     setState(() {
       currentIndex = index;
       _pageController.animateToPage(index,
           duration: Duration(milliseconds: 500), curve: Curves.ease);
     });
   }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 85.h,
          actions: [
            // SvgPicture.asset("assets/icons/appbar_icon.svg")
          ],
          leading: Icon(Icons.list_outlined,color: mainColor,size: 30.h),
          title: Text("لنحيا بالقران",style: TextStyle(fontSize: 24.sp,color: mainColor,
              fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        backgroundColor: backgroundColor,
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              unselectedFontSize: 15.sp,
              selectedFontSize: 16.sp,
              onTap: (index) {
                checkCurrentIndex(index);
              },
              // selectedItemColor: mainColor,
              items: [
                BottomNavigationBarItem(
                  label: "الرئيسية",
                  icon: SvgPicture.asset('assets/icons/main_icon.svg',height: 23),
                  // activeIcon: SvgPicture.asset('assets/icons/explore_colored.svg',
                ),
                BottomNavigationBarItem(
                  label: "المكتبة",
                  icon: SvgPicture.asset('assets/icons/library_icon.svg',height: 23),
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

          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: screen,
          )
      ),
    );
  }}
