// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/models/movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res, MovieDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res, $Val extends MovieDetails>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? overview = freezed,
    Object? popularity = null,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsImplCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$MovieDetailsImplCopyWith(
          _$MovieDetailsImpl value, $Res Function(_$MovieDetailsImpl) then) =
      __$$MovieDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$MovieDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res, _$MovieDetailsImpl>
    implements _$$MovieDetailsImplCopyWith<$Res> {
  __$$MovieDetailsImplCopyWithImpl(
      _$MovieDetailsImpl _value, $Res Function(_$MovieDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? overview = freezed,
    Object? popularity = null,
    Object? posterPath = freezed,
  }) {
    return _then(_$MovieDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieDetailsImpl with DiagnosticableTreeMixin implements _MovieDetails {
  const _$MovieDetailsImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'overview') this.overview,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath});

  factory _$MovieDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'overview')
  final String? overview;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieDetails(id: $id, title: $title, imdbId: $imdbId, originalLanguage: $originalLanguage, overview: $overview, popularity: $popularity, posterPath: $posterPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieDetails'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imdbId', imdbId))
      ..add(DiagnosticsProperty('originalLanguage', originalLanguage))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('posterPath', posterPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imdbId,
      originalLanguage, overview, popularity, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsImplCopyWith<_$MovieDetailsImpl> get copyWith =>
      __$$MovieDetailsImplCopyWithImpl<_$MovieDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsImplToJson(
      this,
    );
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'imdb_id') final String? imdbId,
          @JsonKey(name: 'original_language') final String? originalLanguage,
          @JsonKey(name: 'overview') final String? overview,
          @JsonKey(name: 'popularity') required final double popularity,
          @JsonKey(name: 'poster_path') final String? posterPath}) =
      _$MovieDetailsImpl;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'overview')
  String? get overview;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsImplCopyWith<_$MovieDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
