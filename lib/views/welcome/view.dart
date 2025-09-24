 import 'package:flutter/material.dart';
class WelcomeView extends StatelessWidget {
  const WelcomeView ({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fashion Store',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'Raboto',
//       ),
//       home:  const Hom,
//
//
//   }
// }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // صورة الخلفية
            Image.network(
              "",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // طبقة سوداء شفافة
            Container(color: Colors.black.withOpacity(0.3)),

            // المحتوى
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // زر التخطي
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Skip", style: TextStyle(color: Colors.white)),
                    ),
                  ),

                  Spacer(),

                  // النصوص
                  Text("Explore & Shop",
                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),

                  SizedBox(height: 10),

                  Text("Discover fashion categories, browse new arrivals and shop favorites",
                      style: TextStyle(color: Colors.white, fontSize: 16)),

                  SizedBox(height: 20),

                  // زر البدء
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Get Started"),
                  ),

                  SizedBox(height: 10),

                  Text("Hi, Shop", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}