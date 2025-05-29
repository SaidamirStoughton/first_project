// import 'package:flutter/material.dart';

// class MessagesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 40),
//             Text("Messages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.search),
//                 hintText: "Search a chat or message",
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text("Companies", style: TextStyle(fontWeight: FontWeight.bold)),
//             ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage('assets/image.png')),
//               title: Text("Google"),
//               subtitle: Text("Are you available for an interview?"),
//               trailing: Text("11:45 am"),
//             ),
//             ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage('assets/image.png')),
//               title: Text("HP"),
//               subtitle: Text("We are looking forward to taking..."),
//               trailing: Text("11:45 am"),
//             ),
//             const SizedBox(height: 10),
//             Text("Individual Messages", style: TextStyle(fontWeight: FontWeight.bold)),
//             ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage('assets/image.png')),
//               title: Text("Erik John"),
//               subtitle: Text("We are looking for a web developer"),
//               trailing: Text("11:45 am"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
