import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie_preview.dart';

part '../../generated/domain/models/movies_list_response.freezed.dart';
part '../../generated/domain/models/movies_list_response.g.dart';

@freezed

class MoviesListResponse with _$MoviesListResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MoviesListResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') @Default([]) List<MoviePreview> results,

  }) = _MoviesListResponse;

  factory MoviesListResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesListResponseFromJson(json);

  
}





