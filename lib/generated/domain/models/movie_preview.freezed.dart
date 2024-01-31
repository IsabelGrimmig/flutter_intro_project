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
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'poster_path') String? posterPath,
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
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? adult = null,
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
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'poster_path') String? posterPath,
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
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? adult = null,
  }) {
    return _then(_$MoviePreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'adult') this.adult = false});

  factory _$MoviePreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviePreviewImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'adult')
  final bool adult;

  @override
  String toString() {
    return 'MoviePreview(id: $id, title: $title, posterPath: $posterPath, adult: $adult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.adult, adult) || other.adult == adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, posterPath, adult);

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
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'adult') final bool adult}) = _$MoviePreviewImpl;

  factory _MoviePreview.fromJson(Map<String, dynamic> json) =
      _$MoviePreviewImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(ignore: true)
  _$$MoviePreviewImplCopyWith<_$MoviePreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
