// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'OMDb API Demo',
//       home: MovieListScreen(),
//     );
//   }
// }

// class MovieListScreen extends StatefulWidget {
//   @override
//   _MovieListScreenState createState() => _MovieListScreenState();
// }

// class _MovieListScreenState extends State<MovieListScreen> {
//   TextEditingController _searchController = TextEditingController();
//   List<Movie> _movies = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('OMDb Movie Search'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _searchController,
//               decoration: InputDecoration(labelText: 'Search Movies'),
//               onSubmitted: (value) {
//                 _searchMovies(value);
//               },
//             ),
//             SizedBox(height: 16.0),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _movies.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(_movies[index]....),
//                     subtitle: Text(_movies[index]....),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _searchMovies(String query) async {
//     const apiKey = 'YOUR_OMDB_API_KEY';
//     final apiUrl = 'http://www.omdbapi.com/?apikey=$apiKey&s=$query';

//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final List<dynamic> movies = data['Search'];

//       setState(() {
//         _movies = movies.map((movie) => Movie.fromJson(movie)).toList();
//       });
//     } else {
//       throw Exception('Failed to load movies');
//     }
//   }
// }

// class *OBJET* {
//   attribut1
//   attribut2

//   Objet({required ....., required .....});

//   factory Objet.fromJson(Map<String, dynamic> json) {
//     return Objet(
//       attribut1: json['...'],
//       attribut2: json['...'],
//     );
//   }
// }