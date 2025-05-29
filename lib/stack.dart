// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class Stacks extends StatelessWidget {
//   Stacks({super.key});

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Stack(
//   //       children: [
//   //         Container(
//   //           height: 400,
//   //           width: 400,
//   //           color: Colors.red,
//   //         ),
//   //         Positioned(
//   //           bottom: 100,
//   //           left: 130,
//   //           child: Container(
//   //             height: 150,
//   //             width: 150,
//   //             color: Colors.black,
//   //           ),
//   //         ),
//   //         Positioned(
//   //           bottom: 120,
//   //           left: 100,
//   //           child: Container(
//   //             height: 100,
//   //             width: 100,
//   //             color: Colors.amber,
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Container(
//   //       color: Colors.grey,
//   //       height: 1000,
//   //       child: Stack(
//   //         children: [
//   //           Container(
//   //             height: 400,
//   //             width: 400,
//   //             color: Colors.black,
//   //           ),
//   //           Positioned(
//   //             top: 390,
//   //             left: 50,
//   //             child: Container(
//   //               height: 300,
//   //               width: 300,
//   //               color: Colors.grey.shade200,
//   //             ),
//   //           ),
//   //           const Positioned(
//   //             top: 370,
//   //             left: 300,
//   //             child: CircleAvatar(
//   //               radius: 30,
//   //               backgroundColor: Color.fromARGB(221, 157, 123, 67),
//   //               child: Icon(
//   //                 Icons.play_arrow_outlined,
//   //                 color: Colors.white,
//   //                 size: 35,
//   //               ),
//   //             ),
//   //           ),
//   //           Positioned(
//   //             top: 20,
//   //             left: 20,
//   //             child: IconButton(
//   //               onPressed: () {},
//   //               icon: const Icon(Icons.arrow_back, color: Colors.white),
//   //             ),
//   //           ),
//   //           Center(
//   //             child: Container(
//   //               height: 300,
//   //               width: 300,
//   //               decoration: BoxDecoration(
//   //                 color: Colors.grey.shade300,
//   //                 border: Border.all(
//   //                   color: Colors.black,
//   //                   width: 10,
//   //                 ),
//   //                 boxShadow: [
//   //                   const BoxShadow(
//   //                     color: Colors.red,
//   //                     spreadRadius: 10,
//   //                     blurRadius: 12,
//   //                     offset: Offset(-10, -10),
//   //                   ),
//   //                   const BoxShadow(
//   //                     color: Colors.blue,
//   //                     spreadRadius: 10,
//   //                     blurRadius: 12,
//   //                     offset: Offset(10, 10),
//   //                   ),
//   //                 ],
//   //                 gradient: const LinearGradient(
//   //                   colors: [Colors.red, Colors.blue],
//   //                   begin: Alignment.topLeft,
//   //                   end: Alignment.bottomRight,
//   //                 ),
//   //                 shape: BoxShape.circle,
//   //                 image: const DecorationImage(
//   //                   image: NetworkImage('https://picsum.photos/100?random=1'),
//   //                 ),
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       backgroundColor: Colors.white,
//   //       elevation: 0.5,
//   //       title: const Text(
//   //         'Telegram',
//   //         style: TextStyle(
//   //             color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
//   //       ),
//   //       actions: [
//   //         IconButton(
//   //           icon: const Icon(Icons.search, color: Colors.black),
//   //           onPressed: () {},
//   //         ),
//   //         IconButton(
//   //           icon: const Icon(Icons.menu, color: Colors.black),
//   //           onPressed: () {},
//   //         ),
//   //       ],
//   //     ),
//   //     body: Column(
//   //       children: [
//   //         // Сторисы
//   //         Container(
//   //           height: 100,
//   //           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//   //           child: Row(
//   //             children: [
//   //               storyWidget('https://picsum.photos/100?random=1', 'User 1'),
//   //               storyWidget('https://picsum.photos/100?random=2', 'User 2'),
//   //               storyWidget('https://picsum.photos/100?random=3', 'User 3'),
//   //               storyWidget('https://picsum.photos/100?random=4', 'User 4'),
//   //               storyWidget('https://picsum.photos/100?random=5', 'User 5'),
//   //             ],
//   //           ),
//   //         ),
//   //         // Личные чаты
//   //         Expanded(
//   //           child: Column(
//   //             children: [
//   //               chatTile('https://picsum.photos/100?random=10', 'User 1',
//   //                   'Последнее сообщение...', '12:30', true),
//   //               chatTile('https://picsum.photos/100?random=11', 'User 2',
//   //                   'Привет!', '11:45', false),
//   //               chatTile('https://picsum.photos/100?random=12', 'User 3',
//   //                   'Как дела?', '10:15', true),
//   //               chatTile('https://picsum.photos/100?random=13', 'User 4',
//   //                   'Окей', '09:50', false),
//   //               chatTile('https://picsum.photos/100?random=14', 'User 5',
//   //                   'До встречи', '08:20', true),
//   //             ],
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Widget storyWidget(String imageUrl, String name) {
//   //   return Padding(
//   //     padding: EdgeInsets.symmetric(horizontal: 5),
//   //     child: Column(
//   //       children: [
//   //         CircleAvatar(
//   //           radius: 30,
//   //           backgroundColor: Colors.blue,
//   //           child: CircleAvatar(
//   //             radius: 28,
//   //             backgroundImage: NetworkImage(imageUrl),
//   //           ),
//   //         ),
//   //         SizedBox(height: 5),
//   //         Text(name, style: TextStyle(fontSize: 12)),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Widget chatTile(String imageUrl, String name, String message, String time,
//   //     bool hasNotification) {
//   //   return ListTile(
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.circular(16.0),
//   //       side: BorderSide(color: Colors.black),
//   //     ),
//   //     contentPadding: EdgeInsets.zero,
//   //     leading: CircleAvatar(
//   //       radius: 25,
//   //       backgroundColor: Colors.red,
//   //       backgroundImage: NetworkImage(imageUrl),
//   //     ),
//   //     title: Text(
//   //       "Flutter group",
//   //       style: TextStyle(
//   //         fontWeight: FontWeight.w700,
//   //         fontSize: 16.0,
//   //       ),
//   //     ),
//   //     subtitle: Text(
//   //       "helllo",
//   //       style: TextStyle(color: Colors.grey),
//   //     ),
//   //     trailing: SizedBox(
//   //       width: 100,
//   //       child: Column(
//   //         children: [
//   //           Padding(
//   //             padding: EdgeInsets.only(top: 4.0),
//   //             child: Row(
//   //               mainAxisAlignment: MainAxisAlignment.end,
//   //               children: [
//   //                 Icon(
//   //                   Icons.done_all,
//   //                   color: Colors.blue,
//   //                   size: 13,
//   //                 ),
//   //                 Text("15:29"),
//   //               ],
//   //             ),
//   //           )
//   //         ],
//   //       ),
//   //     ),
//   //     onTap: () {},
//   //   );
//   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: const FirstScreen(),
// //     );
// //   }
// // }

// // class FirstScreen extends StatelessWidget {
// //   const FirstScreen({super.key});

// //   @override
//   // Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: const BoxDecoration(
// //           image: DecorationImage(
// //             image: NetworkImage('https://picsum.photos/600/800'), // Фон первого экрана
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               const Text(
// //                 'scoop',
// //                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const SecondScreen()),
// //                   );
// //                 },
// //                 child: const Text('order'),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: () {},
// //                 child: const Text('flavors'),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: () {},
// //                 child: const Text('contact'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class SecondScreen extends StatelessWidget {
// //   const SecondScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Find Your Flavor')),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             const Text(
// //               'Trending flavors',
// //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 20),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Image.network('https://picsum.photos/100', width: 100, height: 100), // Картинка 1
// //                 const SizedBox(width: 20),
// //                 Image.network('https://picsum.photos/101', width: 100, height: 100), // Картинка 2
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// // @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Column(
// //           children: [
// //             // Company Logo and Slogan
// //             Container(
// //               height: 50,
// //               color: Colors.grey[400],
// //               child: Center(
// //                 child: Text(
// //                   'company logo and slogan',
// //                   style: TextStyle(fontWeight: FontWeight.bold),
// //                 ),
// //               ),
// //             ),

// //             // Header
// //             Container(
// //               height: 100,
// //               color: Colors.grey[400],
// //               child: Center(
// //                 child: Text(
// //                   'header',
// //                   style: TextStyle(fontSize: 20),
// //                 ),
// //               ),
// //             ),

// //             // Navigation
// //             Container(
// //               height: 50,
// //               color: Colors.grey[400],
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Container(
// //                     width: 100,
// //                     child: Center(child: Text('navigation...')),
// //                   ),
// //                   Container(
// //                     width: 100,
// //                     child: Center(child: Text('Item 1')),
// //                   ),
// //                   Container(
// //                     width: 100,
// //                     child: Center(child: Text('Item 2')),
// //                   ),
// //                   Container(
// //                     width: 100,
// //                     child: Center(child: Text('Item 3')),
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Main Content
// //             Expanded(
// //               child: Container(
// //                 color: Colors.grey[400],
// //                 child: Center(child: Text('about')),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Container(
// //               width: 50,
// //               height: 50,
// //               color: Colors.blue,
// //               margin: EdgeInsets.all(5),
// //             ),
// //             Row(
// //               children: [
// //                 Column(
// //                   mainAxisSize: MainAxisSize.min,
// //                   children: [
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                   ],
// //                 ),
// //                 Row(
// //                   children: [
// //                     Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Container(
// //                             width: 50,
// //                             height: 50,
// //                             color: Colors.blue,
// //                             margin: EdgeInsets.all(5)),
// //                         Container(
// //                             width: 50,
// //                             height: 50,
// //                             color: Colors.blue,
// //                             margin: EdgeInsets.all(5)),
// //                         Container(
// //                           width: 50,
// //                           height: 50,
// //                           color: Colors.blue,
// //                           margin: EdgeInsets.all(5),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             // const SizedBox(
// //             //   width: 200,
// //             //   height: 20,
// //             // ),
// //             Column(
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                   ],
// //                 ),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                   ],
// //                 ),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                     Container(
// //                         width: 50,
// //                         height: 50,
// //                         color: Colors.blue,
// //                         margin: EdgeInsets.all(5)),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             Container(
// //               width: 350,
// //               height: 40,
// //               decoration: BoxDecoration(
// //                   color: Colors.white, borderRadius: BorderRadius.circular(20)),
// //               child: Row(
// //                 children: [
// //                   const Icon(Icons.search, color: Colors.grey),
// //                   const SizedBox(width: 10),
// //                   Text("Search", style: TextStyle(color: Colors.black)),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

//   // final TextEditingController nameController = TextEditingController();
//   // final TextEditingController surnameController = TextEditingController();
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Center(
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Padding(
//   //             padding: const EdgeInsets.all(16.0),
//   //             child: TextField(
//   //               controller: nameController,
//   //               decoration: InputDecoration(
//   //                 border: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(16.0),
//   //                 ),
//   //                 hintText: "ism yozing",
//   //                 hintStyle: const TextStyle(color: Colors.grey),
//   //                 labelText: "ism",
//   //                 labelStyle: const TextStyle(color: Colors.blue),
//   //                 enabledBorder: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(20),
//   //                   borderSide: const BorderSide(color: Colors.green),
//   //                 ),
//   //                 focusedBorder: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(20),
//   //                   borderSide: const BorderSide(color: Colors.yellow),
//   //                 ),
//   //                 fillColor: Colors.red,
//   //                 filled: true,
//   //               ),
//   //             ),
//   //           ),
//   //           Padding(
//   //             padding: const EdgeInsets.all(16.0),
//   //             child: TextField(
//   //               controller: surnameController,
//   //               decoration: InputDecoration(
//   //                 border: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(16.0),
//   //                 ),
//   //                 hintText: "ism yozing",
//   //                 hintStyle: const TextStyle(color: Colors.grey),
//   //                 labelText: "ism",
//   //                 labelStyle: const TextStyle(color: Colors.blue),
//   //                 enabledBorder: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(20),
//   //                   borderSide: const BorderSide(color: Colors.green),
//   //                 ),
//   //                 focusedBorder: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(20),
//   //                   borderSide: const BorderSide(color: Colors.yellow),
//   //                 ),
//   //                 fillColor: Colors.red,
//   //                 filled: true,
//   //               ),
//   //             ),
//   //           ),
//   //           ElevatedButton(
//   //             onPressed: () {
//   //               if (surnameController.text == "1234") {
//   //                 print("Welcome");
//   //               } else {
//   //                 print("Wrong nickname");
//   //               }
//   //             },
//   //             child: Text("Login"),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: HomeScreen(),
// //     );
// //   }
// // }

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[300],
// //       body: Center(
// //         child: GestureDetector(
// //           onTap: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(builder: (context) => DetailScreen()),
// //             );
// //           },
// //           child: Container(
// //             width: 150,
// //             height: 220,
// //             decoration: BoxDecoration(
// //               color: Colors.red[700],
// //               borderRadius: BorderRadius.circular(25),
// //               boxShadow: [
// //                 BoxShadow(
// //                     color: Colors.black26,
// //                     blurRadius: 10,
// //                     offset: Offset(0, 5)),
// //               ],
// //             ),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Icon(Icons.fitness_center, color: Colors.white, size: 50),
// //                 SizedBox(height: 10),
// //                 Text("ENDORUSH",
// //                     style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.bold)),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class DetailScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.red[700],
// //       body: Column(
// //         children: [
// //           SizedBox(height: 80),
// //           Center(
// //             child: Container(
// //               width: 200,
// //               height: 250,
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(25),
// //                 boxShadow: [
// //                   BoxShadow(
// //                       color: Colors.black26,
// //                       blurRadius: 10,
// //                       offset: Offset(0, 5)),
// //                 ],
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Icon(Icons.fitness_center, color: Colors.red[700], size: 70),
// //                   SizedBox(height: 10),
// //                   Text("SYNTHA-6",
// //                       style: TextStyle(
// //                           color: Colors.black,
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.bold)),
// //                   SizedBox(height: 10),
// //                   Padding(
// //                     padding: EdgeInsets.symmetric(horizontal: 15),
// //                     child: Text(
// //                       "Ultra-premium protein powder with 22g protein per serving.",
// //                       textAlign: TextAlign.center,
// //                       style: TextStyle(color: Colors.black54),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// /*
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd */

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int selectedIndex = 0;
//   final List<String> categories = [
//     "Espresso",
//     "Latte",
//     "Cappuccino",
//     "Cafetiere"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Find the best Coffee to your taste"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               backgroundColor: Colors.blue,
//               child: IconButton(
//                 icon: const Icon(Icons.person, color: Colors.white),
//                 onPressed: () {},
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Find your coffee...",
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: categories.asMap().entries.map((entry) {
//                 int index = entry.key;
//                 String category = entry.value;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedIndex = index;
//                     });
//                   },
//                   child: Chip(
//                     label: Text(category),
//                     backgroundColor: selectedIndex == index
//                         ? Colors.brown
//                         : Colors.grey[200],
//                   ),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(height: 16),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 6,
//                     spreadRadius: 2,
//                   )
//                 ],
//               ),
//               child: ListTile(
//                 leading: ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.asset("assets/images/coffe.png",
//                       width: 50, fit: BoxFit.cover),
//                 ),
//                 title: const Text("Espresso"),
//                 subtitle: const Text("\$4.20"),
//                 trailing: IconButton(
//                   icon: const Icon(Icons.add, color: Colors.red),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const DetailPage()),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Alerts"),
//         ],
//       ),
//     );
//   }
// }

// class DetailPage extends StatefulWidget {
//   const DetailPage({super.key});

//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   int quantity = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Image.asset("assets/images/coffe.png", width: 250),
//             ),
//             const SizedBox(height: 16),
//             const Text("Espresso with Chocolate",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 4),
//             const Row(
//               children: [
//                 Icon(Icons.star, color: Colors.orange),
//                 Text(" 4.8 (6,098)")
//               ],
//             ),
//             const SizedBox(height: 8),
//             const Text("Choice of Chocolate",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 4),
//             Row(
//               children: [
//                 ChoiceChip(label: const Text("White Chocolate"), selected: false),
//                 const SizedBox(width: 8),
//                 ChoiceChip(label: const Text("Milk Chocolate"), selected: true),
//                 const SizedBox(width: 8),
//                 ChoiceChip(label: const Text("Dark Chocolate"), selected: false),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text("Quantity",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 Row(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.remove, color: Colors.red),
//                       onPressed: () {
//                         setState(() {
//                           if (quantity > 1) quantity--;
//                         });
//                       },
//                     ),
//                     Text("$quantity"),
//                     IconButton(
//                       icon: const Icon(Icons.add, color: Colors.red),
//                       onPressed: () {
//                         setState(() {
//                           quantity++;
//                         });
//                       },
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(height: 16),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text("Buy Now"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//   /*
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// Sddsdsdssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
// */
