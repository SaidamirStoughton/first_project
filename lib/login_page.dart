// import 'package:flutter/material.dart';

// class Log extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 80),
//             Image.asset('assets/images/edupro.png', height: 80),
//             const SizedBox(height: 30),
//             const Text(
//               'Getting Started.!',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               'Create an Account to Continue your allCourses',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.grey),
//             ),
//             const SizedBox(height: 30),
//             TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.email),
//                 hintText: 'Email',
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.lock),
//                 suffixIcon: Icon(Icons.visibility_off),
//                 hintText: 'Password',
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 Icon(Icons.check_circle, color: Colors.green),
//                 const SizedBox(width: 8),
//                 const Text('Agree to Terms & Conditions'),
//               ],
//             ),
//             const SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 minimumSize: Size(double.infinity, 50),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white)),
//                   const SizedBox(width: 8),
//                   Icon(Icons.arrow_forward, color: Colors.white),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text('Or Continue With'),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image.asset('assets/images/google.png', height: 24),
//                 ),
//                 const SizedBox(width: 20),
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image.asset('assets/images/apple.png', height: 24),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             GestureDetector(
//               onTap: () {},
//               child: Text(
//                 'Already have an Account? SIGN IN',
//                 style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
