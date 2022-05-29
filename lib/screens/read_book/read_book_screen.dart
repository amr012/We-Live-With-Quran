import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welivewithquran/constants/colors.dart';

class ReadBookScreen extends StatelessWidget {
  const ReadBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
        actions: [
          // SvgPicture.asset("assets/icons/appbar_icon.svg")
        ],
        // leading: Icon(Icons.list_outlined,color: mainColor,size: 28),
        title: Text("لنحيا بالقران",style: TextStyle(fontSize: 20,color: mainColor,
            fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100.h,width: double.infinity,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0),
            child: Container(
              height: 60.h,
              width: 160.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffD7F2FC)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 44.h,
                    width: 48.w,
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),child: SizedBox(
                      child: SvgPicture.asset("assets/icons/play.svg",
                        color: mainColor,)),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 44.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),child: SvgPicture.asset("assets/icons/back_arrow.svg"),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: 500.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: ListView.builder(
                itemCount: 3,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Image.asset("assets/images/book_image.png",fit: BoxFit.fill,)),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
