// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/models/movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailsImpl _$$MovieDetailsImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailsImpl(
      id: json['id'] as int,
      title: json['title'] as String?,
      originalLanguage: json['original_language'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      tagline: json['tagline'] as String?,
      status: json['status'] as String?,
      releaseDate: json['release_date'] as String?,
      runtime: json['runtime'] as int,
      voteAverage: json['vote_average'] as num,
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$$MovieDetailsImplToJson(_$MovieDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'tagline': instance.tagline,
      'status': instance.status,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'adult': instance.adult,
    };
