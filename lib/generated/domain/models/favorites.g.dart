// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/models/favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesImpl _$$FavoritesImplFromJson(Map<String, dynamic> json) =>
    _$FavoritesImpl(
      favorites: (json['favorites'] as List<dynamic>?)
              ?.map((e) => MovieDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FavoritesImplToJson(_$FavoritesImpl instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
    };
