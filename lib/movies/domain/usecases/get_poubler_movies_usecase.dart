import 'package:cleanarcp2/movies/domain/entities/movie.dart';
import 'package:cleanarcp2/movies/domain/repos/basse_movie_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

abstract class GetPoublerMoviesUsecase {
  final BasseMovieRepo basseMovieRepo;

  GetPoublerMoviesUsecase(this.basseMovieRepo);


  Future<Either<Failure , List<Movie>>> execute() async {
    return await basseMovieRepo.getPoublerMovies();
  }
}