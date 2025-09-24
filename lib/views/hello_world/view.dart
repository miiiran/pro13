import 'package:flutter/material.dart';

class HelloWorldView extends StatelessWidget {
  const HelloWorldView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),

      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('hello world');
        },
        child: Icon(Icons.add),
      ),//
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
              hintText: "Enter Name1",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Name2",
                border: OutlineInputBorder()
            ),
            ),
            TextFormField(
            decoration: InputDecoration(
            hintText: "Enter  Name2",
                border: OutlineInputBorder()

            ),
            ),
          ],
        ),
      ),
    );
  }
}
