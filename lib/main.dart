// import 'package:first_project/check_box.dart';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:first_project/coffe_repo.dart';
// import 'package:first_project/note_page.dart';
// import 'package:first_project/json_coffe.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Hive.initFlutter();
// //   await Hive.openBox('counterBox');
// //   runApp(MyApp());
// // }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Python(), //
//     );
//   }
// }



// // class CounterPage extends StatefulWidget {
// //   @override
// //   _CounterPageState createState() => _CounterPageState();
// // }

// // class _CounterPageState extends State<CounterPage> {
// //   final box = Hive.box('counterBox');
// //   int counter = 0;

// //   @override
// //   void initState() {
// //     super.initState();
// //     counter = box.get('count', defaultValue: 0);
// //   }

// //   void updateCounter(int value) {
// //     setState(() {
// //       counter += value;
// //       box.put('count', counter);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Счётчик Hive')),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text('Счёт:', style: TextStyle(fontSize: 24)),
// //             Text('$counter', style: TextStyle(fontSize: 48)),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () => updateCounter(-1),
// //                   child: Text('-'),
// //                 ),
// //                 SizedBox(width: 20),
// //                 ElevatedButton(
// //                   onPressed: () => updateCounter(1),
// //                   child: Text('+'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text(
//           context.watch<CounterProvider>().count.toString,
//           style: const TextStyle(fontSize: 40.0),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         context.read<CounterProvider>().increment();
//       }),
//       bottomNavigationBar: const HomePage(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class Movie {
  final String title;
  final String? posterURL;
  final int? year;
  final String? plot;

  Movie({required this.title, this.posterURL, this.year, this.plot});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? 'No title',
      posterURL: json['posterURL'],
      year: json['year'],
      plot: json['plot'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horror Movies',
      theme: ThemeData.dark(),
      home: MovieListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MovieListScreen extends StatelessWidget {
  Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse('https://api.sampleapis.com/movies/horror'));
    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((e) => Movie.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Horror Movies')),
      body: FutureBuilder<List<Movie>>(
        future: fetchMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          if (snapshot.hasError)
            return Center(child: Text('Error: ${snapshot.error}'));

          final movies = snapshot.data!;
          return GridView.builder(
            padding: EdgeInsets.all(12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MovieDetailScreen(movie: movie)),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: movie.posterURL != null
                        ? DecorationImage(
                            image: NetworkImage(movie.posterURL!),
                            fit: BoxFit.cover,
                          )
                        : null,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(12),
                    child: Text(
                      movie.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (movie.posterURL != null)
            Image.network(movie.posterURL!, height: 300, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title: ${movie.title}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                if (movie.year != null)
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('Year: ${movie.year}', style: TextStyle(fontSize: 16)),
                  ),
                if (movie.plot != null)
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(movie.plot!, style: TextStyle(fontSize: 16)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



