import 'package:flutter/foundation.dart';

import '../../domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overView,
    required super.voteAverage,
    required super.relesseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title:json['title'],
        backdropPath:json['backdrop_path'],
        genreIds:List<int>.from(json['genre_ids'].map((e) => e)),
        overView:json['overview'],
        voteAverage: json['vote_average'],
        relesseDate: json['release_date'],
      );
}
