import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'artist.freezed.dart';
part 'artist.g.dart';

// JSON 문자열을 Artist 객체로 파싱
Artist artistFromJson(String str) => Artist.fromJson(json.decode(str));

// Artist 객체를 JSON 문자열로 직렬화
String artistToJson(Artist data) => json.encode(data.toJson());

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String artist,
    required Data data,
  }) = _Artist;
// User.FromJson << 변경 [Artist → User 로 변경]
  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<ArtistContent> artistContents,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ArtistContent with _$ArtistContent {
  const factory ArtistContent({
    required int artistid,
    required String artistname,
    required String contenttype,
    required String contenturl,
  }) = _ArtistContent;

  factory ArtistContent.fromJson(Map<String, dynamic> json) =>
      _$ArtistContentFromJson(json);
}
