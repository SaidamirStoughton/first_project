// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// void main() async {
//   await Hive.initFlutter();
//   await Hive.openBox('counterBox');
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CounterPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class CounterPage extends StatefulWidget {
//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   final box = Hive.box('counterBox');
//   int counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     counter = box.get('count', defaultValue: 0);
//   }

//   void updateCounter(int value) {
//     setState(() {
//       counter += value;
//       box.put('count', counter); // сохраняем значение
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Hive Counter')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Счётчик:', style: TextStyle(fontSize: 24)),
//             Text('$counter', style: TextStyle(fontSize: 48)),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => updateCounter(-1),
//                   child: Text('-'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () => updateCounter(1),
//                   child: Text('+'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
