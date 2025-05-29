// import 'package:flutter/material.dart';

// class ModalSheet extends StatelessWidget {
//   const ModalSheet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     showModalBottomSheet(
//         isDismissible: false,
//         context: context,
//         builder: (context) {
//           return Container(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text(
//                   "choose an option",
//                   style: TextStyle(fontSize: 24.0),
//                 ),
//                 const SizedBox(height: 10),
//                 ListTile(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   leading: const Icon(Icons.share),
//                   title: const Text("Share"),
//                 ),
//                 const ListTile(
//                   leading: Icon(Icons.link),
//                   title: Text("Copy link"),
//                 ),
//               ],
//             ),
//           );
//         });
//     return const Scaffold();
//   }
// }
