import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/models/movie_details.freezed.dart';
part '../../generated/domain/models/movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetails({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'tagline') String? tagline,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'runtime') required int runtime,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
