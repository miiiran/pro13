
import 'package:flutter/material.dart';

class SuitsAppView extends StatelessWidget {
  const SuitsAppView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Padding( padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                 child:  Image.asset("assets/images/image3.png",
                   // fit: BoxFit.contain,
                   height: 370, width: 150,
                  ),),
                ),
                 SizedBox(height:20),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset("assets/images/image2.png",width: 130, height: 210, ),
                       SizedBox(height: 30),
                      Image.asset("assets/images/image1.png", width:140,height: 130,),
                    ],
                  ),
                ),
              ],
            ),
                SizedBox(height:10),
            SingleChildScrollView(
              padding:  EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   Text.rich(
                    TextSpan(
                      text: "The ",
                      children: [
                        TextSpan(
                          text: "Suits App ",
                          style: TextStyle(color: Color(0XFFDD8560), fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: "that \nMakes Your Look Your Best",
                          style: TextStyle(color: Color(0xff000000),
                              fontWeight: FontWeight.w600),),
                        ],
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                   SizedBox(height: 10),
                   Text(
                    "Everything you need in the world\nof fashion old and new",
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 30),
                  FilledButton(onPressed: (){}, child:  Text("Get started",style:
                   TextStyle(fontSize: 16,color:Color(0xffFFFFFF),
                     fontWeight: FontWeight.w400,),)
                  ),
            ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


