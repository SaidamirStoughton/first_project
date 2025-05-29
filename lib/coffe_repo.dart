// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'coffee_model.dart';

// class CoffeeRepo {
//   final url = 'https://api.sampleapis.com/coffee/hot';

//   Future<List<Coffee>> fetchCoffees() async {
//     final response = await http.get(Uri.parse(url));
//     final List data = jsonDecode(response.body);
//     return data.map((e) => Coffee.fromJson(e)).toList();
//   }
// }