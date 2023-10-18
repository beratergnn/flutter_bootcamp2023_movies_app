import 'package:movies_bloc_pattern/data/entity/movies_model.dart';

class MovieDaoRepo {
  Future<List<MovieModel>> uploadMovies() async {
    await Future.delayed(Duration(seconds: 2));
    List<MovieModel> movieList = MovieModel.getMovies();
    return movieList;
  }
}
