// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/models/favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return _Favorites.fromJson(json);
}

/// @nodoc
mixin _$Favorites {
  @JsonKey(name: 'favorites')
  List<MovieDetails> get favorites => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites')
  set favorites(List<MovieDetails> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res, Favorites>;
  @useResult
  $Res call({@JsonKey(name: 'favorites') List<MovieDetails> favorites});
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res, $Val extends Favorites>
    implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MovieDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesImplCopyWith<$Res>
    implements $FavoritesCopyWith<$Res> {
  factory _$$FavoritesImplCopyWith(
          _$FavoritesImpl value, $Res Function(_$FavoritesImpl) then) =
      __$$FavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'favorites') List<MovieDetails> favorites});
}

/// @nodoc
class __$$FavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesCopyWithImpl<$Res, _$FavoritesImpl>
    implements _$$FavoritesImplCopyWith<$Res> {
  __$$FavoritesImplCopyWithImpl(
      _$FavoritesImpl _value, $Res Function(_$FavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$FavoritesImpl(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MovieDetails>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$FavoritesImpl implements _Favorites {
  _$FavoritesImpl({@JsonKey(name: 'favorites') this.favorites = const []});

  factory _$FavoritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesImplFromJson(json);

  @override
  @JsonKey(name: 'favorites')
  List<MovieDetails> favorites;

  @override
  String toString() {
    return 'Favorites(favorites: $favorites)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      __$$FavoritesImplCopyWithImpl<_$FavoritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesImplToJson(
      this,
    );
  }
}

abstract class _Favorites implements Favorites {
  factory _Favorites(
          {@JsonKey(name: 'favorites') List<MovieDetails> favorites}) =
      _$FavoritesImpl;

  factory _Favorites.fromJson(Map<String, dynamic> json) =
      _$FavoritesImpl.fromJson;

  @override
  @JsonKey(name: 'favorites')
  List<MovieDetails> get favorites;
  @JsonKey(name: 'favorites')
  set favorites(List<MovieDetails> value);
  @override
  @JsonKey(ignore: true)
  _$$FavoritesImplCopyWith<_$FavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
