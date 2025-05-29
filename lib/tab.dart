// // import 'package:flutter/material.dart';

// // class Mypage extends StatelessWidget with SingleTickerProviderStateMixin {
// //   late final TabController tabController;
// //   const Mypage({super.key});

// //   @override
// //   void initState() {
// //     super.initState();
// //     tabController = TabController(length: 3, vsync: this);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 3,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: Text("Page of smthng"),
// //         ),
// //         body: Column(
// //           children: [
// //             Container(
// //               height: 100,
// //               width: 5000,
// //               color: Colors.grey,
// //             ),
// //             const SizedBox(
// //               height: 50,
// //               child: TabBar(
// //                 tabs: [
// //                   TabBar(
// //                     controller: tabController,
// //                     text: "Posts",
// //                     icon: Icon(Icons.post_add),
// //                   ),
// //                   TabBar(
// //                     controller: tabController,
// //                     text: "Reels",
// //                     icon: Icon(Icons.play_arrow),
// //                   ),
// //                   TabBar(
// //                     controller: tabController,
// //                     text: "Data",
// //                     icon: Icon(Icons.data_array_outlined),
// //                   )
// //                 ],
// //                 indicatorSize: TabBarIndicatorSize.tab,
// //                 unselectedLabelColor: Colors.black,
// //                 labelColor: Colors.black,
// //                 dividerHeight: 0,
// //                 dividerColor: Colors.red,
// //                 indicator: BoxDecoration(
// //                   color: Colors.grey,
// //                   borderRadius: BorderRadius.all(Radius.circular(50.0)),
// //                 ),
// //               ),
// //             ),
// //             const Expanded(
// //               child: TabBarView(
// //                 children: [
// //                   Center(child: Text("Posts page")),
// //                   Center(child: Text("Reels page")),
// //                   Center(child: Text("Tags people")),
// //                 ],
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Products extends StatelessWidget {
//   Products({super.key});
//   final List<Map<String, dynamic>> products = [
//     {
//       'name': 'Apple',
//       'price': 1.5,
//       'image': 'https://picsum.photos/id/101/100',
//     },
//     {
//       'name': 'Banana',
//       'price': 1.2,
//       'image': 'https://picsum.photos/id/102/100',
//     },
//     {
//       'name': 'Carrot',
//       'price': 0.8,
//       'image': 'https://picsum.photos/id/103/100',
//     },
//     {
//       'name': 'Broccoli',
//       'price': 1.1,
//       'image': 'https://picsum.photos/id/104/100',
//     },
//     {
//       'name': 'Tomato',
//       'price': 0.9,
//       'image': 'https://picsum.photos/id/110/100',
//     },
//     {
//       'name': 'Orange',
//       'price': 1.3,
//       'image': 'https://picsum.photos/id/106/100',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Catalog"),
//       ),
//       body: ListView.separated(
//         itemCount: products.length,
//         padding: const EdgeInsets.all(16.0),
//         separatorBuilder: (context, index) {
//           return const Divider();
//         },
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                 child: Image(image: NetworkImage(products[index]["image"])),
//               ),
//               title: Text(
//                 products[index]["name"],
//                 style: const TextStyle(fontSize: 18.0),
//               ),
//               subtitle: Text(
//                 "\$${products[index]["price"]}",
//                 style: const TextStyle(color: Colors.grey),
//               ),
//               trailing: const Icon(Icons.arrow_forward_ios),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
