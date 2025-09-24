// import 'package:flutter/material.dart';
//
// class AddAddressView extends StatelessWidget {
//   const AddAddressView ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//     title:
//     Text('Add Address',
//     style: TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w600,)),
//     centerTitle: true,
//
//     ),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Title',
//               border: OutlineInputBorder(),
//
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class AddAddressView extends StatelessWidget {
//   const AddAddressView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Add Address',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//         ),
//         centerTitle: true,
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: [
//           buildTextField('Title'),
//           SizedBox(height: 16),
//           buildTextField('Address'),
//           SizedBox(height: 16),
//           buildTextField('Building No'),
//           SizedBox(height: 16),
//           buildTextField('Floor No'),
//           SizedBox(height: 16),
//           buildTextField('Apartment No'),
//
//           SizedBox(height: 80),
//           SizedBox(
//             width: double.infinity,
//             height: 55,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xffDD8560),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: Text(
//                 'Save',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // ويدجت موحدة لكل TextField
//   Widget buildTextField(String label) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: TextStyle(
//           color: Colors.black87,
//           fontSize: 15,
//         ),
//         filled: true,
//         fillColor: Color(0xFFF8F8F8),
//         contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.grey.shade400),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(4),
//           borderSide: BorderSide(color: Color(0xffDD8560), width: 1.5),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    appBar: AppBar(
    leading: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.arrow_back_ios),
    ),
    title:  Text("Add Address",
    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
      centerTitle: true,
    ),
    body: SingleChildScrollView(
    padding: const EdgeInsets.all(17),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [

    SizedBox(height: 39),
    TextFormField(
    decoration: InputDecoration(
    hintText: 'Titel',
    ),
    ),
    SizedBox(height: 16),
    TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: 'Address',
    ),
    ),
      SizedBox(height: 16),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Building No',
        ),
      ),
      SizedBox(height: 16),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Floor No',
        ),
      ),
      SizedBox(height: 16),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Apartment No',
        ),
      ),

    SizedBox(height: 40),
    FilledButton(onPressed: (){

    }, child: Text('Save',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        color: Colors.white))
    ),


        ],
    ),
    ),

    );
  }
}

