import 'package:freezed_annotation/freezed_annotation.dart';
part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String id,
    required String englishName,
    required String koreanName,
    required String logoImageUrl,
    required String artistImageUrl,
    required String adVideo,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
