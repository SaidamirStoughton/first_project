// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class UserRepo {
//   final String baseurl = "https://6817aba126a599ae7c3b1608.mockapi.io/api/v1/users";

//   Future<List<User>> getAllUsers() async {
//     try {
//       final response = await http.get(
//         Uri.parse(baseurl),
//       );
//       final List data = jsonDecode(response.body);
//       final List<User> users = data.map((json) => User.fromJson(json)).toList();

//       return users;
//     } catch (e) {
//       throw Exception("Xatolik $e");
//     }
//   }
// }