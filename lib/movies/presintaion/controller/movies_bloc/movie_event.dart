part of 'movie_bloc.dart';

class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MovieEvent {}

class GetPoblerMoviesEvent extends MovieEvent {}

class GetTopRateingMoviesEvent extends MovieEvent {}
