// import 'package:flutter/material.dart';

// class Tic extends StatefulWidget {
//   const Tic({super.key});

//   @override
//   State<Tic> createState() => _TicState();
// }

// class _TicState extends State<Tic> {
//   String down = "male";
//   List items = [
//     {
//       "Value": "male",
//       "Child": "Male",
//     },
//     {
//       "Value": "female",
//       "Child": "Female",
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             border: Border.all(color: Colors.white),
//           ),
//           padding: const EdgeInsets.all(12.0),
//           child: Directionality(
//             textDirection: TextDirection.rtl,
//             child: DropdownButton<String>(
//               value: down,
//               onChanged: (String? value) {
//                 if (value) {
//                   setState(() {
//                     down = value;
//                   });
//                 }
//               },
//               borderRadius: BorderRadius.zero,
//               dropdownColor: Colors.grey,
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 50.0,
//               ),
//               isExpanded: true,
//               alignment:
//                   Alignment.centerLeft, // Исправлено Aligment -> Alignment
//               underline: const SizedBox(),
//               items: const [
//                 DropdownMenuItem(
//                   value: "male",
//                   child: Text(
//                     "Male",
//                     style: TextStyle(fontSize: 40.0),
//                   ),
//                 ),
//                 DropdownMenuItem(
//                   value: "female",
//                   child: Text(
//                     "Female",
//                     style: TextStyle(fontSize: 40),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         child: PopupMenuButton(
//           icon: const Icon(Icons.more_vert),
//           onSelected: (value) {
//             print(value);
//           },
//           itemBuilder: (context) {
//             return List.generate(
//               items.length,
//               (index) {
//                 return PopupMenuItem(
//                   value: items[index]['value'],
//                   child: Text(items[index]['child']!),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
