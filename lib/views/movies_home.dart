import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day1/model/movie.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  final String apiKey =
      'REGISTER_FOR_API_KEY_IT_IS_FREE'; // get yourself a key from here: https://www.themoviedb.org/

  List<dynamic> movies = [];
  String _searchTerm = '';

  String getSearchMovieAPI(String query) {
    return "https://api.themoviedb.org/3/search/movie?api_key=$apiKey&language=en-US&query=$query&page=1&include_adult=false";
  }

  final String imagesBaseUrl = 'https://image.tmdb.org/t/p/original';

  Future<void> searchMovies() async {
    try {
      final response =
          await http.get(Uri.parse(getSearchMovieAPI(_searchTerm)));
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        var results = jsonResponse['results'];

        final List<dynamic> movieList = results
            .map((json) {
              return Movie(
                movieId: json['id'] ?? '',
                title: json['title'] ?? '',
                posterPath: json['poster_path'] ?? '',
              );
            })
            .where((movie) =>
                movie.posterPath != null && movie.posterPath.isNotEmpty)
            .toList();

        setState(() {
          movies = movieList;
          print(movies);
        });
      } else {
        print('API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _searchTerm = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type movie title..',
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () => searchMovies(), child: const Text("search"))
          ],
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieInfo(movie: movie)));
                },
                leading: CachedNetworkImage(
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  imageUrl: '$imagesBaseUrl${movie.posterPath}',
                ),
                title: Text(movie.title),
                subtitle: Text('ID: ${movie.movieId}'),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MovieInfo extends StatelessWidget {
  final Movie movie;
  const MovieInfo({super.key, required this.movie});
  final String imagesBaseUrl = 'https://image.tmdb.org/t/p/original';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.movieId.toString()),
      ),
      body: Column(children: [
        Text(movie.title),
        Expanded(
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: '$imagesBaseUrl${movie.posterPath}',
          ),
        ),
      ]),
    );
  }
}
