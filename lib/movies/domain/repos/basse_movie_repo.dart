import '../entities/movie.dart';

abstract class BasseMovieRepo {
  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getPoublerMovies();
  Future<List<Movie>> getToRatedMovies();
}
