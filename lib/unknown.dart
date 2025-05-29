
      // import 'package:first_project/unknown.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(
//             seedColor: const Color.fromARGB(255, 231, 19, 19)),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: const Text(
//             "Birinchi app",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Container(
//           margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//           height: 200,
//           width: 200,
//           color: Colors.black,
//           child: Container(margin: EdgeInsets.all(20),
//             height: 100,
//             width: 100,
//             color: Colors.blueGrey,
//             child: const Text(
//               "Container 1",style: TextStyle(color: Colors.white, fontSize: 20)
//               ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             // Company Logo and Slogan
//             Container(
//               color: Colors.grey[400],
//               height: 100,
//               width: double.infinity,
//               alignment: Alignment.center,
//               child: const Text('Company Logo and Slogan'),
//             ),
//             // Header
//             Container(
//               color: Colors.grey[300],
//               height: 80,
//               width: double.infinity,
//               alignment: Alignment.center,
//               child: const Text('Header'),
//             ),
//             // Navigation
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   color: Colors.grey[200],
//                   height: 50,
//                   width: 80,
//                   alignment: Alignment.center,
//                   child: const Text('Nav 1'),
//                 ),
//                 Container(
//                   color: Colors.grey[200],
//                   height: 50,
//                   width: 80,
//                   alignment: Alignment.center,
//                   child: const Text('Nav 2'),
//                 ),
//                 Container(
//                   color: Colors.grey[2000],
//                   height: 50,
//                   width: 80,
//                   alignment: Alignment.center,
//                   child: const Text('Nav 3'),
//                 ),
//               ],
//             ),
//             // Main Content
//             Expanded(
//               child: Row(
//                 children: [
//                   // About Section
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       color: Colors.grey[400],
//                       margin: const EdgeInsets.all(5),
//                       alignment: Alignment.center,
//                       child: const Text('About'),
//                     ),
//                   ),
//                   // Quick Links
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             color: Colors.grey[300],
//                             margin: const EdgeInsets.all(5),
//                             alignment: Alignment.center,
//                             child: const Text('Quick Links 1'),
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             color: Colors.grey[300],
//                             margin: const EdgeInsets.all(5),
//                             alignment: Alignment.center,
//                             child: const Text('Quick Links 2'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Footer
//             Container(
//               color: Colors.grey[400],
//               height: 60,
//               width: double.infinity,
//               alignment: Alignment.center,
//               child: const Text('Site Plan and Copyright Info'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//------------------------------------------------------------------------------







// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text("Letter E")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 )
//               ],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.black,
//             ),
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.black,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   ));
// }



//------------------------------------------------------------------------



// import 'package:flutter/material.dart';

// void main() {
  // runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyWidget(),
//       //Scaffold(
//         body: Column(
//           children: [
//             // Company logo and slogan
//             Container(
//               margin: EdgeInsets.all(10),
//               height: 50,
//               color: Colors.grey,
//               child: Center(child: Text("Company Logo and Slogan")),
//             ),
//             // Header
//             Container(
//               margin: EdgeInsets.all(10),
//               height: 80,
//               color: Colors.grey[400],
//               child: Center(child: Text("Header")),
//             ),
//             // Navigation
//             Container(
//               margin: EdgeInsets.all(10),
//               height: 50,
//               color: Colors.grey[300],
//               child: Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     width: 260,
//                     color: Colors.grey[500],
//                     child: Center(child: Text("Nav 1")),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     width: 260,
//                     color: Colors.grey[400],
//                     child: Center(child: Text("Nav 2")),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     width: 260,
//                     color: Colors.grey[500],
//                     child: Center(child: Text("Nav 3")),
//                   ),
//                 ],
//               ),
//             ),
//             // Main content
//             Expanded(
//               child: Row(
//                 children: [
//                   // About
//                   Container(
//                     margin: EdgeInsets.all(10),
//                     width: 500,
//                     color: Colors.grey[300],
//                     child: Center(child: Text("About")),
//                   ),
//                   // Quick links
//                  Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           height: 153,
//                           width: 330,
//                           color: Colors.grey[500],
//                           child: Center(child: Text("Quick Link 1")),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           height: 180,
//                           width: 330,
//                           color: Colors.grey[400],
//                           child: Center(child: Text("Quick Link 2")),
//                         ),
//                       ],
//                     ),
//                 ],
//               ),
//             ),
//             // Site plan and copyright info
//             Container(
//               margin: EdgeInsets.all(10),
//               height: 60,
//               color: Colors.grey[300],
//               child: Center(child: Text("Site Plan and Copyright Info")),
//             ),
//           ],
//         ),
//       ),
//     //);
//   }
// }

