import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 32,),
          Text('Hello',
          style: TextStyle(
            color: Colors.black,
            fontSize: 50,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.grey,
            fontWeight: FontWeight.w400, ),
          )
        ],
      ),

    );
  }
}


          class TrView extends StatelessWidget {
            const TrView ({super.key});

            @override
            Widget build(BuildContext context) {
              return Scaffold (
                body:
                Text("smmsm",style: TextStyle(fontWeight:
                FontWeight.w500,fontSize: 12,),),
              );
            }
          }

