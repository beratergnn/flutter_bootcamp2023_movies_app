import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_bloc_pattern/data/entity/movies_model.dart';
import 'package:movies_bloc_pattern/data/repo/movies_dao_repository.dart';

class MainPageCubit extends Cubit<List<MovieModel>> {
  MainPageCubit() : super(<MovieModel>[]);

  var mRepo = MovieDaoRepo();

  Future<void> uploadMovies() async {
    List<MovieModel> movieList = await mRepo.uploadMovies();
    emit(movieList);
  }
}
