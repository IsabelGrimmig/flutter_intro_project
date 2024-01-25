// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/models/movie_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviePreviewImpl _$$MoviePreviewImplFromJson(Map<String, dynamic> json) =>
    _$MoviePreviewImpl(
      id: json['id'] as int,
      popularity: (json['popularity'] as num).toDouble(),
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      video: json['video'] as bool? ?? false,
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$$MoviePreviewImplToJson(_$MoviePreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'popularity': instance.popularity,
      'title': instance.title,
      'overview': instance.overview,
      'video': instance.video,
      'adult': instance.adult,
    };
