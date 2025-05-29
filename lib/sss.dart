// import 'package:flutter/material.dart';

// class Flags extends StatefulWidget {
//   const Flags({super.key});

//   @override
//   State<Flags> createState() => _FlagsState();
// }

// class _FlagsState extends State<Flags> {
//   Color color1 = Colors.white;
//   Color color2 = Colors.blue;
//   Color color3 = Colors.red;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 300,
//             height: 100,
//             color: color1,
//           ),
//           Container(
//             width: 300,
//             height: 100,
//             color: color2,
//           ),
//           Container(
//             width: 300,
//             height: 100,
//             color: color3,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   color1 = Colors.black;
//                   color2 = Colors.red;
//                   color3 = Colors.amber;
//                 });
//               },
//               child: Text("almashtirish")),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   color1 = Colors.white;
//                   color2 = Colors.blue;
//                   color3 = Colors.red;
//                 });
//               },
//               child: Text("restart"))
//         ],
//       ),
//     );
//   }
// }
