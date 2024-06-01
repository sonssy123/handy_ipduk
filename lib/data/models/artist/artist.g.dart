// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      id: json['id'] as String,
      englishName: json['englishName'] as String,
      koreanName: json['koreanName'] as String,
      logoImageUrl: json['logoImageUrl'] as String,
      artistImageUrl: json['artistImageUrl'] as String,
      adVideo: json['adVideo'] as String,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'englishName': instance.englishName,
      'koreanName': instance.koreanName,
      'logoImageUrl': instance.logoImageUrl,
      'artistImageUrl': instance.artistImageUrl,
      'adVideo': instance.adVideo,
    };
