import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/model/Movie_model.dart';

class NetworkHelper {
  String url =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=27fe8aa285e6d11c8b3cf5fa638758e9&language=en-US&page=2";
  Future<Movie> getMovieDetails() async {
    var movieList;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = response.body;
      var jsonMap = jsonDecode(data);
      movieList = Movie.fromJson(jsonMap);
    }
    return movieList;
  }
}
