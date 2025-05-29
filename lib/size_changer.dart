// import 'package:flutter/material.dart';

// class ColorChanger extends StatefulWidget {
//   const ColorChanger({super.key});

//   @override
//   State<ColorChanger> createState() => _ColorChangerState();
// }

// class _ColorChangerState extends State<ColorChanger> {
//   double size = 100;

//   Color containerColor = Colors.orange;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(width: size, height: size, color: containerColor),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           FloatingActionButton(
//             onPressed: () => setState(() => size += 50),
//             child: Text('+'),
//           ),
//           FloatingActionButton(
//             onPressed: () => setState(() => size -= 50),
//             child: Text('-'),
//           ),
//           FloatingActionButton(
//             onPressed: () => setState(() {
//               size = 100;
//               containerColor = Colors.orange;
//             }),
//             child: Text('reset'),
//           ),
//           FloatingActionButton(
//             backgroundColor: Colors.red,
//             onPressed: () => setState(() => containerColor = Colors.red),
//           ),
//           FloatingActionButton(
//             backgroundColor: Colors.blue,
//             onPressed: () => setState(() => containerColor = Colors.blue),
//           ),
//           FloatingActionButton(
//             backgroundColor: Colors.black,
//             onPressed: () => setState(() => containerColor = Colors.black),
//           ),
//         ],
//       ),
//     );
//   }




// @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: FlagSwitcher(),
//     );
//   }


// class FlagSwitcher extends StatefulWidget {
//   const FlagSwitcher({super.key});

//   @override
//   _FlagSwitcherState createState() => _FlagSwitcherState();
// }

// class _FlagSwitcherState extends State<FlagSwitcher> {
//   bool isFrance = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Bayroq almashtir.')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(child: isFrance ? _France() : _Germany()),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 isFrance = !isFrance;
//               });
//             },
//             child: const Text('almashirish knopka'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _France() {
//     return Container(
//       width: 150,
//       height: 100,
//       child: Row(
//         children: [
//           Expanded(child: Container(color: Colors.red)),
//           Expanded(child: Container(color: Colors.white)),
//           Expanded(child: Container(color: Colors.blue)),
//         ],
//       ),
//     );
//   }

//   Widget _Germany() {
//     return Container(
//       width: 150,
//       height: 100,
//       child: Column(
//         children: [
//           Expanded(child: Container(color: Colors.black)),
//           Expanded(child: Container(color: Colors.red)),
//           Expanded(child: Container(color: Colors.yellow)),
//         ],
//       ),
//     );
//   }
// }
