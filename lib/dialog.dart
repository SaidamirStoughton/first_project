// import 'package:flutter/material.dart';

// class Dialog extends StatefulWidget {
//   const Dialog({super.key});

//   @override
//   State<Dialog> createState() => _MyDialogState();
// }

// class _MyDialogState extends State<Dialog> {
//   bool korinadimi = true;

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
        
//     return ScaffoldMessenger.of(context.ShowSnackBar)(
//       SnackBar(
//         backgroundColor: Colors.green,
//       duration: const Duration(seconds: 3),
//       dismissDirection: DismissDirection.down,
//       behavior: SnackBarBehavior,
//       );
//       appBar: AppBar(
//         title: korinadimi ? const Text("Ochiradigan text") : null,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   actionsPadding: const EdgeInsets.symmetric(horizontal: 16),
//                   title: const Text("Tasdiqlash"),
//                   content: const Text("O‘chirishni xohlaysizmi?"),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Text("Cancel"),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                         setState(() {
//                           korinadimi = false;
//                         });
//                       },
//                       child: const Text("Ok"),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue,
//             foregroundColor: Colors.white,
//             elevation: 0,
//           ),
//           child: const Text("tap to open Dialog"),
//         ),
//       ),
//     );
//   }
// }