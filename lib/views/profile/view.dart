import 'package:flutter/material.dart';
import 'package:pro11/views/profile/widgets/item_profile.dart';

class ProfileView  extends StatelessWidget {
  const ProfileView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,)),
        centerTitle: true,

      ),
      body:ListView(
        padding: EdgeInsets.all(19),
          children: [
            Center(
              child: ClipOval(
                // child: Container(
                //   color: Colors.white,
                //   height: 100,
                //   width: 100,
                  child: Image.asset('assets/images/photo_2025-07-01_09-59-11.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // backgroundImage: NetworkImage('assets/images/photo_2025-07-01_09-59-11.jpg'),
            SizedBox(height: 14,),

          Center(  //
            child: Text(
              'Menna Hussein',
            textAlign: TextAlign.center, //تنفع برضو هي والسنتر
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
                    ),
          ),
        SizedBox(height: 41,),
    //      TextButton.icon(onPressed:(){},
    //
    //        style: TextButton.styleFrom(backgroundColor: Color(0xffFFFFFF),
    //          padding: EdgeInsets.zero,
    // ),
    //             label: Padding(
    //               padding: const EdgeInsets.all(16),
    //               child: Row(
    //                            children: [
    //                              Icon(Icons.account_balance),
    //                              SizedBox(width: 18),
    //                              Text('Your Profile',
    //                  style: TextStyle(
    //                    fontSize: 15,
    //                    color: Colors.
    //                    black,
    //                    fontWeight: FontWeight.w600,
    //                  ),
    //                  ),
    //                            ],
    //                          ),
    //             ),),
    //      SizedBox(height: 16),
         // Container(
         //    padding: EdgeInsets.all(16),
         //      decoration: BoxDecoration(
         //        borderRadius: BorderRadius.circular(5),
         //      color: Color(0xffFFFFFF),
         //
         //    ),
         //    child: InkWell(
         //      highlightColor: Colors.red,
         //      splashColor: Colors.green,
         //
        //  //      onTap: (){},
        //       child: Row(
        //         children: [
        //           Icon(Icons.account_balance),
        //           SizedBox(width: 10,),
        //           Text('Your Profile',
        //             style: TextStyle(
        //                 fontSize: 15,
        //               fontWeight: FontWeight.w600,
        //             ),
        //          ),
        //
        //         ],
        //       ),
        //     ),
        //
        // ),
            ItemProfile(icon:'your_profile.png' ,title:'Your Profile',onPressed: (){}),
            ItemProfile(icon:'my_order.png' ,title:'My Order' ,onPressed: (){}),
            ItemProfile(icon:'payment_methods.png' ,title:'Payment Methods' ,onPressed: (){}),
            ItemProfile(icon:'wishlist.png' ,title:'Wishlist' ,onPressed: (){}),
            ItemProfile(icon:'setting.png' ,title:'Setting' ,onPressed: (){}),
            ItemProfile(icon:'log_out.png' ,title:'LogOut', onPressed: (){}),

        ],
      ),
      bottomNavigationBar:
      SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
                children: [
                   Expanded(child: Image.asset('assets/icons/home.png', height: 20, width: 18,),),
                   Expanded(child: Image.asset('assets/icons/cart.png', height: 20, width: 18,),),
                  Expanded(child: Image.asset('assets/icons/heart.png', height: 20, width: 18,),),
                  Expanded(child: Image.asset('assets/icons/person.png', height: 20, width: 18,),),
                ],
              ),
        ),
      ),
    );
  }
}
