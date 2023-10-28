part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingStat;
  final String nowPlayingErrorMassage;

  const MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingStat = RequestState.loading,
    this.nowPlayingErrorMassage = '',
  });

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingStat,
        nowPlayingErrorMassage,
      ];
}

// class MovieInitial extends MovieState {}
