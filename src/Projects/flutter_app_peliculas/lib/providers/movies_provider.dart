import 'package:flutter/material.dart';
import 'package:flutter_app_peliculas/models/models.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = 'bac570bf6b8b0f66d91608b71fc3d305';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    onDisplayMovies = nowPlayingResponse.results;
		notifyListeners();
  }
}
