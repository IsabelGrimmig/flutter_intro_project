// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/models/movie_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviePreviewImpl _$$MoviePreviewImplFromJson(Map<String, dynamic> json) =>
    _$MoviePreviewImpl(
      id: json['id'] as int,
      title: json['title'] as String?,
      posterPath: json['poster_path'] as String?,
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$$MoviePreviewImplToJson(_$MoviePreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'adult': instance.adult,
    };
