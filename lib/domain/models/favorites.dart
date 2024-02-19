import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_details.dart';

part '../../generated/domain/models/favorites.freezed.dart';
part '../../generated/domain/models/favorites.g.dart';

@freezed
class Favorites with _$Favorites {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
  const factory Favorites({
    @JsonKey(name: 'favorites') @Default([]) List<MovieDetails> favorites,
  }) = _Favorites;

  factory Favorites.fromJson(Map<String, dynamic> json) =>
      _$FavoritesFromJson(json);
}
