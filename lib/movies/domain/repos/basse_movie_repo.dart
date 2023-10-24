import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/movie.dart';

abstract class BasseMovieRepo {
  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure,  List<Movie>>> getPoublerMovies();
  Future<Either<Failure , List<Movie>>> getToRatedMovies();
}
