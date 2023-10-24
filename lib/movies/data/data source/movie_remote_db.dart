import 'package:cleanarcp2/movies/data/models/movies_model.dart';
import 'package:dio/dio.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network_services/api_constamce.dart';
import '../../../core/network_services/erorr_maseage_model.dart';

abstract class BasseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPoublerMovie();
  Future<List<MovieModel>> getTopRateingMovie();
}

class MovieRemoteDataSource extends BasseMovieRemoteDataSource {
  //--1--
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  //--2---------------------------------------------------------
  @override
  Future<List<MovieModel>> getPoublerMovie() async {
    final response = await Dio().get(ApiConstance.popularMoviesPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
  //--3---------------------------------------------------------
  @override
  Future<List<MovieModel>> getTopRateingMovie() async {
   final response = await Dio().get(ApiConstance.topRatedMoviesPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
