// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/models/movies_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesListResponseImpl _$$MoviesListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesListResponseImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MoviePreview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MoviesListResponseImplToJson(
        _$MoviesListResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
