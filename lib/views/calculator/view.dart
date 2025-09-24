import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff246765),
        centerTitle: false,
        title: Text('Calculator'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('hello world');
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://hihi2.com/wp-content/uploads/2014/11/2293.jpg",
              ),),

              SizedBox(height: 16,),


        TextFormField(
        decoration: InputDecoration(
        hintText: "Enter Name1",
          border:   OutlineInputBorder()
        ),
            ),
            SizedBox(height: 16,),
            TextFormField(
            decoration: InputDecoration(
            hintText: "Enter Name2",
              border: OutlineInputBorder()
            ),
            ),
              SizedBox(height: 16,),
            TextFormField(
            decoration: InputDecoration(
            hintText: "Enter Name3",
              border: OutlineInputBorder()
            ),
            ),
              SizedBox(height: 16,),
              FilledButton(onPressed:(){

              }, child: Text("Calc"),
              ),
            ],
            ),
      ),
    );
  }
}
