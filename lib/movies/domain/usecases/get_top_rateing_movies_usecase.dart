import 'package:cleanarcp2/movies/domain/entities/movie.dart';
import 'package:cleanarcp2/movies/domain/repos/basse_movie_repo.dart';

abstract class GetToRatedMoviesUsecase {
  final BasseMovieRepo basseMovieRepo;

  GetToRatedMoviesUsecase(this.basseMovieRepo);



  Future<List<Movie>> execute() async {
    return await basseMovieRepo.getToRatedMovies();
  }
}