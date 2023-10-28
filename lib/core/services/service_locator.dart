import 'package:cleanarcp2/movies/data/data%20source/movie_remote_db.dart';
import 'package:cleanarcp2/movies/data/repos/movie_repo.dart';
import 'package:cleanarcp2/movies/domain/repos/basse_movie_repo.dart';
import 'package:cleanarcp2/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:cleanarcp2/movies/presintaion/controller/movies_bloc/movie_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///BLOC
    sl.registerFactory(() => MovieBloc(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BasseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    /// USE CASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUsecase(sl()));

    /// REPO
    sl.registerLazySingleton<BasseMovieRepo>(() => MoovieRepo(sl()));
  }
}
