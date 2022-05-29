import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welivewithquran/constants/colors.dart';
import 'package:welivewithquran/custom_widgets/custom_text.dart';

class CustomSettingItem extends StatelessWidget {
   CustomSettingItem({Key? key,this.title,this.image,this.onPress}) : super(key: key);

   String? image;
   String? title;
   Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 5,),
                  SvgPicture.asset(image!,color: blueColor,),
                  SizedBox(width: 17.w,),
                  CustomText(
                    text: title!,
                    color: blueColor,
                    fontSize: 17.sp,
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios,size: 20,color: blueColor,)
            ],
          ),
        ),
      ),
    );
  }
}
