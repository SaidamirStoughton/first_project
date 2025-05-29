// import 'package:flutter/material.dart';

// class Searchmod extends StatelessWidget {
//   const Searchmod({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Padding(padding: const EdgeInsets.all(16.0)
//       child: FutureBuilder(future: , builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return GridView.builder(itemCount: snapshot.data.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
//           mainAxisExtent: 300,
//           ),
//           itemBuilder: (context, index) {
//             return Align(
//               child: Card(
//                 child: Padding(padding: const EdgeInsets.all(18.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center.index,
//                   children: [
//                     Text(snapshot.data[index].title,)
//                     Text(snapshot.data[index].body,
//                     maxLines: 3,
//                     style: const TextStyle(
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     ),
//                   ],
//                 ),),
//               ),
//             );
//           },)
//         }
//       },),),
//     );
//   }
// }