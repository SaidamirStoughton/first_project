// // main.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'CineFlix',
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: Colors.black,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.black,
//           elevation: 0,
//         ),
//       ),
//       home: const MovieListScreen(),
//     );
//   }
// }

// // MODEL
// class Movie {
//   final String title;
//   final String posterPath;
//   final String overview;
//   final String releaseDate;

//   Movie({
//     required this.title,
//     required this.posterPath,
//     required this.overview,
//     required this.releaseDate,
//   });

//   factory Movie.fromJson(Map<String, dynamic> json) => Movie(
//         title: json['title'] ?? '-',
//         posterPath: json['poster_path'] ?? '',
//         overview: json['overview'] ?? '-',
//         releaseDate: json['release_date'] ?? '-',
//       );
// }

// // CONTROLLER
// class MovieController extends GetxController {
//   var movies = <Movie>[].obs;
//   var isLoading = true.obs;
//   final String apiKey = 'YOUR_API_KEY_HERE';

//   @override
//   void onInit() {
//     fetchMovies();
//     super.onInit();
//   }

//   Future<void> fetchMovies() async {
//     try {
//       isLoading(true);
//       final response = await http.get(Uri.parse(
//         'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=1',
//       ));

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         final List results = data['results'];
//         movies.value = results.map((e) => Movie.fromJson(e)).toList();
//       } else {
//         Get.snackbar('Error', 'Unable to fetch movies');
//       }
//     } catch (e) {
//       Get.snackbar('Error', e.toString());
//     } finally {
//       isLoading(false);
//     }
//   }
// }

// // LIST SCReen
// class MovieListScreen extends StatelessWidget {
//   const MovieListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(MovieController());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('🎬 Popular Movies', style: TextStyle(fontWeight: FontWeight.bold)),
//         centerTitle: true,
//       ),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return const Center(child: CircularProgressIndicator());
//         }

//         return GridView.builder(
//           padding: const EdgeInsets.all(12),
//           itemCount: controller.movies.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 16,
//             crossAxisSpacing: 16,
//             childAspectRatio: 0.6,
//           ),
//           itemBuilder: (context, index) {
//             final movie = controller.movies[index];

//             return GestureDetector(
//               onTap: () => Get.to(() => MovieDetailScreen(movie: movie)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(16),
//                       child: Image.network(
//                         'https://image.tmdb.org/t/p/w500${movie.posterPath}',
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                         errorBuilder: (_, __, ___) => const Icon(Icons.error),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     movie.title,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     movie.releaseDate,
//                     style: TextStyle(color: Colors.grey[500], fontSize: 12),
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// // detail screeN
// class MovieDetailScreen extends StatelessWidget {
//   final Movie movie;
//   const MovieDetailScreen({super.key, required this.movie});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(movie.title)),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(16),
//               child: Image.network(
//                 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               movie.overview,
//               style: const TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }