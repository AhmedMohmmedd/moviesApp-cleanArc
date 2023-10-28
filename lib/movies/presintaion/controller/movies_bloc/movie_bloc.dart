import 'package:bloc/bloc.dart';

import 'package:cleanarcp2/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/utlis/enums.dart';
import '../../../domain/entities/movie.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
  MovieBloc(this.getNowPlayingMoviesUsecase) : super(const MovieState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUsecase.execute();
      print(result);
      result.fold(
        (l) => {
          emit(MovieState(
            nowPlayingStat: RequestState.error,
            nowPlayingErrorMassage: l.message,
          ))
        },
        (r) => emit(
          MovieState(
            nowPlayingMovies: r,
            nowPlayingStat: RequestState.loaded,
          ),
        ),
      );
    });
  }
}
