import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/models/movie_image.freezed.dart';
part '../../generated/domain/models/movie_image.g.dart';

@freezed
class MovieImage with _$MovieImage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieImage({
    @JsonKey(name: 'file_path') String? filePath,
  }) = _MovieImage;

  factory MovieImage.fromJson(Map<String, dynamic> json) =>
      _$MovieImageFromJson(json);
}
