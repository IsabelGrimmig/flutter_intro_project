import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/models/movie_preview.freezed.dart';
part '../../generated/domain/models/movie_preview.g.dart';

@freezed
class MoviePreview with _$MoviePreview {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MoviePreview({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'adult') @Default(false) bool adult,
  }) = _MoviePreview;

  factory MoviePreview.fromJson(Map<String, dynamic> json) =>
      _$MoviePreviewFromJson(json);
}
