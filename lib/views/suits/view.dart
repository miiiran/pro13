// import 'package:flutter/material.dart';
//
// class SuiteView extends StatelessWidget {
//   const SuiteView ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  ();
//   }
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("5 Suits"),
//          actions: [IconButton(icon: Icon(Icons.edit), onPressed: () {})],
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16),
//         children: List.generate(5, (index) => SuitCard()),
//       ),
//     );
//   }
//
// class SuitCard extends StatelessWidget {
//   const SuitCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Expanded(
//             child: Image.network(
//               "https://images.unsplash.com/photo-1591047139829-d91aecb6caea",
//               fit: BoxFit.cover,
//               width: double.infinity,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Column(
//               children: [
//                 Text("Suit Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                 Text("\$299", style: TextStyle(color: Colors.blue)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SuiteView extends StatelessWidget {
  const SuiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5 Suits"),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: List.generate(5, (index) => const SuitCard()),
      ),
    );
  }
}

class SuitCard extends StatelessWidget {
  const SuitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                "https://images.unsplash.com/photo-1591047139829-d91aecb6caea",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: const [
                Text(
                  "Suit Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  "\$299",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
