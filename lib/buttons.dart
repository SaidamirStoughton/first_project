// import 'package:flutter/material.dart';

// class Buttons extends StatelessWidget {
//   const Buttons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("BUTTONS"),
//         ),
//         body: Center(
//             child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 print("+ 1 HAMSTER COIN");
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 elevation: 10,
//                 shadowColor: Colors.red,
//                 fixedSize: const Size(370, 154),
//                 side: const BorderSide(
//                   color: Colors.red,
//                   strokeAlign: BorderSide.strokeAlignInside,
//                   width: 10,
//                   style: BorderStyle.solid,
//                 ),
//                 shape: const RoundedRectangleBorder(
//                   side: BorderSide(color: Colors.red, width: 10),
//                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                 ),
//               ),
//               child: const Text(
//                 "Elevated button",
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//           ],
//         )
//       )
//     );
//   }
// }

// class Buttons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton.icon(
//           onPressed: () => print("Elevated button pressed"),
//           onLongPress: () => print("Long pressed"),
//           onFocusChange: (value) => print("Focused"),
//           onHover: (value) => print("Hovered"),
//           label: const Text("ELEVATED BUTTON"),
//           icon: const Icon(Icons.arrow_forward),
//           iconAlignment: IconAlignment.end,
//           style: ElevatedButton.styleFrom(
//           ),
//         ),
//         TextButton(
//           onPressed: () => print("Text button pressed"),
//           style: TextButton.styleFrom(
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.blue,
//             shape: BeveledRectangleBorder(
//               side: const BorderSide(color: Colors.red),
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           child: const Text("Text button"),
//         ),
//         OutlinedButton(
//           onPressed: () {},
//           style: OutlinedButton.styleFrom(
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.zero,
//             ),
//           ),
//           child: const Text("Outlined button"),
//         ),
//         IconButton(
//           onPressed: () {},
//           style: IconButton.styleFrom(
//             backgroundColor: Colors.red,
//             padding: EdgeInsets.zero,
//           ),
//           icon: const Icon(
//             Icons.facebook_outlined,
//             color: Colors.blue,
//             size: 50,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(Icons.holiday_village),
//         ),
//         Container(
//           height: 400,
//           width: 400,
//           color: Colors.red,
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           child: const Text("data"),
//         ),
//       ],
//     );
//   }
// }
