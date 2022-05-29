import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';

class FavouriteScreen extends StatelessWidget {
   FavouriteScreen({Key? key}) : super(key: key);

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
      child:Column(
        children: [
          SizedBox(height: 80.h,),
          CustomText(
            text: "المفضلة",
            fontSize: 24.sp,
            color: mainColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                    childAspectRatio: .8
              ),
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 110.h,
                    child: Image.asset(images[index],fit: BoxFit.fill,),
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
