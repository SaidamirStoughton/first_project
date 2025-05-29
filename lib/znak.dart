// import 'package:flutter/material.dart';

// class Switcher extends StatefulWidget {
//   const Switcher({super.key});

//   @override
//   State<Switcher> createState() => _SwitcherState();
// }

// class _SwitcherState extends State<Switcher> {
//   double size = 100;
//   int groupValue = 1;

//   Color color = Colors.white;

//   bool bosildimi = false;
//   bool bosildimi2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Container(
//             width: 300,
//             height: 70,
//             color: color,
//           ),
//           IconButton(
//               onPressed: () => setState(() => bosildimi = !bosildimi),
//               icon: Icon(
//                 bosildimi ? Icons.favorite : Icons.favorite_outline,
//                 size: 100,
//                 color: bosildimi ? Colors.white : Colors.red,
//               )),
//           Checkbox(
//               value: bosildimi2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(2)),
//               ),
//               side: BorderSide(color: Colors.white),
//               activeColor: Colors.blue,
//               onChanged: (value) {
//                 setState(() {
//                   bosildimi2 = value ?? false;
//                 });
//               }),
//           RadioListTile(
//               value: 1,
//               groupValue: groupValue,
//               tileColor: Colors.red,
//               onChanged: (value) {
//                 setState(() {
//                   groupValue = value!;
//                 });
//               }),
//               RadioListTile(
//               value: 1,
//               groupValue: groupValue,
//               tileColor: Colors.red,
//               onChanged: (value) {
//                 setState(() {
//                   groupValue = value!;
//                 });
//               }),
//               RadioListTile(
//               value: 1,
//               groupValue: groupValue,
//               tileColor: Colors.red,
//               onChanged: (value) {
//                 setState(() {
//                   groupValue = value!;
//                 });
//               }),
//         ]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (bosildimi) {
//               color = Colors.grey;
//             } else {
//               color = Colors.red;
//             }
//             bosildimi = !bosildimi;
//           });
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
