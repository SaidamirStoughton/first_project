// import 'package:flutter/material.dart';

// class Grid extends StatefulWidget {
//   const Grid({super.key});

//   @override
//   State<Grid> createState() => _GridState();
// }

// class _GridState extends State<Grid> {
//   List<String> names = [];

//   Color color1 = Colors.white;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Wrap")),
//       ),
//       body: Center(
//         child: Wrap(
//           spacing: 8,
//           runSpacing: 12,
//           children: List.generate(6, (index) {
//             return Container(
//               width: 100,
//               height: 30,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   color: color1,
//                   border: Border.all(color: Colors.black, width: 2)),
//               child: Center(
//                   child: TextButton(
//                       onPressed: () {
//                         color1 = Colors.black;
//                       },
//                       child: Text("Sport"))),
//             );
//           }),
//         ),
//       ),
//       backgroundColor: Colors.green,
//     );
//   }
// }
