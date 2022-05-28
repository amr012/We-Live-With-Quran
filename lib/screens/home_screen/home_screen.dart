import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

   List screen = [
     MainScreen(),
     LibraryScreen(),
     FavouriteScreen(),
     SettingsScreen(),
   ];

   checkCurrentIndex(int index) {
     setState(() {
       currentIndex = index;
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
          toolbarHeight: 80,
          leading: Icon(Icons.list_outlined,color: Colors.black,),
          title: Text("لنحيا بالقران",style: TextStyle(fontSize: 20,color: mainColor,
              fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFEAF9FF),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
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

          body: screen[currentIndex]
      ),
    );
  }}
