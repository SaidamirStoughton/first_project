// import 'dart:convert';

// class CoffeeRepo {
//   final String baseUrl = "https://sampleapis.com";

//   Future<List<CoffeeRepo>> getAllCoffees(String type) async {
//     final Box coffeeBox = Hive.box('coffee');
//     try {
//       final response = await http.get(Uri.parse("$baseUrl/coffee/$type"));
//       final List data = jsonDecode(response.body);
//       final List<Coffee> cofees = data.map((c) => Coffee.fromJson(c)).toList();
//       if (type = 'hot') {
//         await coffeeBox.put('hot', cofees);
//       } else {
//         await coffeeBox.put('iced', cofees);
//       }
//       return cofees;
//     } catch (e, s) {
//       if (type == 'hot' && coffeeBox.containsKey('hot')) {
//         return coffeeBox.get('hot')!.cast<CoffeeRepo>();
//       }
//       throw Exception('An unexpected error has occured');
//     }
//   }
// }
