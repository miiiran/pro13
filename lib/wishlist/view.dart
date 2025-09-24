import 'package:flutter/material.dart';
import 'package:pro11/wishlist/model.dart';
import 'package:pro11/wishlist/widgets/item_category.dart';
import 'package:pro11/wishlist/widgets/item_product.dart';

class WishlistView extends StatefulWidget {
  const WishlistView ({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  final list =["All","Blazar","Shirt","Pant","Shoes"];
  int selectedCategory = 1;
      bool isLoading = true;


       void getData() async{
         await Future.delayed(Duration(seconds: 3));
         isLoading = false;
             setState(() {
             });
       }

      @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("My Wishlist"),
        surfaceTintColor: Colors.transparent
        ,centerTitle: true,),
      body: Column(
        children: [
          SizedBox(height: 16,),
          Container(
            height: 24,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder:(context, index) => SizedBox(width: 8,) ,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => ItemCategory(
                onTap: () {
                  print('index $index');
                  selectedCategory = index;
                  setState(() {

                  });
                },
              text: list[index],

              isSelected: index== selectedCategory,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
            )),
            // child: SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children:
            //        List.generate( 5,
            //              ( index) => ItemCategory(),),
            //
            //   ),
            // )

           SizedBox(height: 16,),
          Expanded(
            child:GridView.builder(
              padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 151/188
            ),
                itemCount: 10,
                itemBuilder: ( context, index)=> ItemProduct(
                  model: fakeProducts[index],),
            ),
          ),
        ],
      ),
    );
  }
}