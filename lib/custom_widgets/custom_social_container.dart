import 'package:flutter/material.dart';

class CustomSocialContainer extends StatelessWidget {
   CustomSocialContainer({Key? key,this.onTap,this.containerColor,required this.title}) : super(key: key);
 Color? containerColor;
 Function()? onTap;
 String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          color: containerColor,
          height: 50,
          child: Center(child: Text(title,
            style: TextStyle(fontSize: 18,color: Colors.white),)),
        ),
      ),
    );
  }
}
