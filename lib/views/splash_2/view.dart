import 'package:flutter/material.dart';

class Splash2View extends StatelessWidget {
  const Splash2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff676767),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/logo.png",
              height: 100,
              width: 100,),
            SizedBox(width: 12,),
            Text("suits",style: TextStyle(
                fontSize: 128,
                color: Colors.white,
                fontFamily: "Waterfall"
            ),)
          ],
        ),
      ),
    );
  }
}
