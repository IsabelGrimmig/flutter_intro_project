// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/models/movies_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesListResponse _$MoviesListResponseFromJson(Map<String, dynamic> json) {
  return _MoviesListResponse.fromJson(json);
}

/// @nodoc
mixin _$MoviesListResponse {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MoviePreview> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesListResponseCopyWith<MoviesListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesListResponseCopyWith<$Res> {
  factory $MoviesListResponseCopyWith(
          MoviesListResponse value, $Res Function(MoviesListResponse) then) =
      _$MoviesListResponseCopyWithImpl<$Res, MoviesListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MoviePreview> results});
}

/// @nodoc
class _$MoviesListResponseCopyWithImpl<$Res, $Val extends MoviesListResponse>
    implements $MoviesListResponseCopyWith<$Res> {
  _$MoviesListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MoviePreview>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesListResponseImplCopyWith<$Res>
    implements $MoviesListResponseCopyWith<$Res> {
  factory _$$MoviesListResponseImplCopyWith(_$MoviesListResponseImpl value,
          $Res Function(_$MoviesListResponseImpl) then) =
      __$$MoviesListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MoviePreview> results});
}

/// @nodoc
class __$$MoviesListResponseImplCopyWithImpl<$Res>
    extends _$MoviesListResponseCopyWithImpl<$Res, _$MoviesListResponseImpl>
    implements _$$MoviesListResponseImplCopyWith<$Res> {
  __$$MoviesListResponseImplCopyWithImpl(_$MoviesListResponseImpl _value,
      $Res Function(_$MoviesListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$MoviesListResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MoviePreview>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MoviesListResponseImpl implements _MoviesListResponse {
  const _$MoviesListResponseImpl(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'results') final List<MoviePreview> results = const []})
      : _results = results;

  factory _$MoviesListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<MoviePreview> _results;
  @override
  @JsonKey(name: 'results')
  List<MoviePreview> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MoviesListResponse(page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesListResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesListResponseImplCopyWith<_$MoviesListResponseImpl> get copyWith =>
      __$$MoviesListResponseImplCopyWithImpl<_$MoviesListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesListResponseImplToJson(
      this,
    );
  }
}

abstract class _MoviesListResponse implements MoviesListResponse {
  const factory _MoviesListResponse(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'results') final List<MoviePreview> results}) =
      _$MoviesListResponseImpl;

  factory _MoviesListResponse.fromJson(Map<String, dynamic> json) =
      _$MoviesListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MoviePreview> get results;
  @override
  @JsonKey(ignore: true)
  _$$MoviesListResponseImplCopyWith<_$MoviesListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
