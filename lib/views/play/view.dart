import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayView extends StatelessWidget {
  const PlayView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
        child: Column(
          children: [
           CircularProgressIndicator(),
            LinearProgressIndicator(),
            CupertinoActivityIndicator(),
            Switch(value: true
                , onChanged: (value)
            {},),
          ],
        ),
      ),
       bottomNavigationBar: SafeArea(
           child: Row(children: [
              Expanded(child: InkWell(
                onTap: (){
                  print('hello world');
                },
                child: Container(
                    height: 50,color: Colors.white,
                    child: Center(child: Column(
                      children: [
                        Icon(Icons.account_balance_rounded),
                        Text("Menna"),
                      ],
                    ))),
              )),

             Expanded(child: Container(
                 height: 50,color: Colors.blue,
                 child: Center(child: Text("Hussein")))),
            ],
           ),
         ),
       
      //   BottomNavigationBar(items: [
    //     BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
    //     BottomNavigationBarItem(icon: Icon(Icons.work), label: "Wark"),
    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    //
    //   ]),
    );
  }
}
