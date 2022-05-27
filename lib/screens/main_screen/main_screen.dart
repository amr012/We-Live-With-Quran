import 'package:flutter/material.dart';
import 'package:welivewithquran/constants/colors.dart';

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
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 50,
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
                        suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/sura_image2.png"),
                                )

                            ),
                          ));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8),
              child: Text("الاقسام",style: TextStyle(fontSize: 24,color: mainColor,fontWeight: FontWeight.w700),),
            ),
            SizedBox(
              height: 45,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("القران الكريم",style: TextStyle(color: Colors.white),)),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
              child: Text("المضاف أخيراً",style: TextStyle(fontSize: 24,color: mainColor,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,),
              child: SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(images[index]),
                                )

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
}
