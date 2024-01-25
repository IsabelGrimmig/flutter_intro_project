// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/models/movie_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviePreview _$MoviePreviewFromJson(Map<String, dynamic> json) {
  return _MoviePreview.fromJson(json);
}

/// @nodoc
mixin _$MoviePreview {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviePreviewCopyWith<MoviePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviePreviewCopyWith<$Res> {
  factory $MoviePreviewCopyWith(
          MoviePreview value, $Res Function(MoviePreview) then) =
      _$MoviePreviewCopyWithImpl<$Res, MoviePreview>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'adult') bool adult});
}

/// @nodoc
class _$MoviePreviewCopyWithImpl<$Res, $Val extends MoviePreview>
    implements $MoviePreviewCopyWith<$Res> {
  _$MoviePreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? popularity = null,
    Object? title = freezed,
    Object? overview = freezed,
    Object? video = null,
    Object? adult = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviePreviewImplCopyWith<$Res>
    implements $MoviePreviewCopyWith<$Res> {
  factory _$$MoviePreviewImplCopyWith(
          _$MoviePreviewImpl value, $Res Function(_$MoviePreviewImpl) then) =
      __$$MoviePreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'overview') String? overview,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'adult') bool adult});
}

/// @nodoc
class __$$MoviePreviewImplCopyWithImpl<$Res>
    extends _$MoviePreviewCopyWithImpl<$Res, _$MoviePreviewImpl>
    implements _$$MoviePreviewImplCopyWith<$Res> {
  __$$MoviePreviewImplCopyWithImpl(
      _$MoviePreviewImpl _value, $Res Function(_$MoviePreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? popularity = null,
    Object? title = freezed,
    Object? overview = freezed,
    Object? video = null,
    Object? adult = null,
  }) {
    return _then(_$MoviePreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MoviePreviewImpl implements _MoviePreview {
  const _$MoviePreviewImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'overview') this.overview,
      @JsonKey(name: 'video') this.video = false,
      @JsonKey(name: 'adult') this.adult = false});

  factory _$MoviePreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviePreviewImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'overview')
  final String? overview;
  @override
  @JsonKey(name: 'video')
  final bool video;
  @override
  @JsonKey(name: 'adult')
  final bool adult;

  @override
  String toString() {
    return 'MoviePreview(id: $id, popularity: $popularity, title: $title, overview: $overview, video: $video, adult: $adult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.adult, adult) || other.adult == adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, popularity, title, overview, video, adult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePreviewImplCopyWith<_$MoviePreviewImpl> get copyWith =>
      __$$MoviePreviewImplCopyWithImpl<_$MoviePreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviePreviewImplToJson(
      this,
    );
  }
}

abstract class _MoviePreview implements MoviePreview {
  const factory _MoviePreview(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'popularity') required final double popularity,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'overview') final String? overview,
      @JsonKey(name: 'video') final bool video,
      @JsonKey(name: 'adult') final bool adult}) = _$MoviePreviewImpl;

  factory _MoviePreview.fromJson(Map<String, dynamic> json) =
      _$MoviePreviewImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'overview')
  String? get overview;
  @override
  @JsonKey(name: 'video')
  bool get video;
  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(ignore: true)
  _$$MoviePreviewImplCopyWith<_$MoviePreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
