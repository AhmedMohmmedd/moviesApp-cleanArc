import 'package:cleanarcp2/core/errors/exceptions.dart';
import 'package:cleanarcp2/movies/data/data%20source/movie_remote_db.dart';
import 'package:cleanarcp2/movies/domain/entities/movie.dart';
import 'package:cleanarcp2/core/errors/failure.dart';
import 'package:cleanarcp2/movies/domain/repos/basse_movie_repo.dart';
import 'package:dartz/dartz.dart';

class MoovieRepo extends BasseMovieRepo {
  final BasseMovieRemoteDataSource basseMovieRemoteDataSource;

  MoovieRepo(this.basseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    final result = await basseMovieRemoteDataSource.getNowPlayingMovie();

    try {
      return right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailure(failuer.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPoublerMovies() async {
   final result = await basseMovieRemoteDataSource.getPoublerMovie();

    try {
      return right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailure(failuer.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getToRatedMovies() async {
    final result = await basseMovieRemoteDataSource.getTopRateingMovie();

    try {
      return right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailure(failuer.errorMessageModel.statusMessage));
    }
  }
}
