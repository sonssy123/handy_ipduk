// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      artist: json['artist'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      artistContents: (json['artistContents'] as List<dynamic>)
          .map((e) => ArtistContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'artistContents': instance.artistContents,
    };

_$ArtistContentImpl _$$ArtistContentImplFromJson(Map<String, dynamic> json) =>
    _$ArtistContentImpl(
      artistid: (json['artistid'] as num).toInt(),
      artistname: json['artistname'] as String,
      contenttype: json['contenttype'] as String,
      contenturl: json['contenturl'] as String,
    );

Map<String, dynamic> _$$ArtistContentImplToJson(_$ArtistContentImpl instance) =>
    <String, dynamic>{
      'artistid': instance.artistid,
      'artistname': instance.artistname,
      'contenttype': instance.contenttype,
      'contenturl': instance.contenturl,
    };
